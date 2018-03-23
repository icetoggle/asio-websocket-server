#include "Session.h"
#include "Server.h"
#include <iostream>
#include <boost/uuid/detail/sha1.hpp>
#include "boost/archive/iterators/base64_from_binary.hpp"
#include "boost/archive/iterators/transform_width.hpp"

static std::string encode64(const std::vector<unsigned char> &val) {
	using namespace boost::archive::iterators;
	std::stringstream os;
	typedef base64_from_binary<transform_width<const unsigned char *, 6, 8>> base64_text;
	std::copy(
		base64_text(val.data()),
		base64_text(val.data() + val.size()),
		std::ostream_iterator<char>(os)
	);
	return os.str().append((3 - val.size() % 3) % 3, '=');
}

Session::Session(boost::asio::ip::tcp::socket & socket, Server & server) :_server(server), _socket(std::move(socket))
{
}

Session::~Session()
{
}

void Session::start()
{
	do_hand_shake();
	//do_read_header();
}

void Session::do_hand_shake()
{
	_socket.async_read_some(boost::asio::buffer(_shakeHandMsg, SHAKE_HAND_MAX_LENGTH), [this](boost::system::error_code err, std::size_t size)
	{
		auto state = _shakeHandParser.parse(_shakeHandMsg, size);
		if (state == RequestParser::EConsuming)
		{
			do_hand_shake();
		}
		else if(state == RequestParser::EError)
		{
			_socket.close();
			_server.leave(shared_from_this());
		}
		else if (state == RequestParser::EComplete)
		{
			//解析完头部 返回响应信息
			auto key = _shakeHandParser.getRequest()._web_socket_key + "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";

			// Create response data
			_shakeResp = "HTTP/1.1 101 Switching Protocols\r\n"
				"Connection: Upgrade\r\n"
				"Upgrade: websocket\r\n"
				"Sec-WebSocket-Accept: ";
			boost::uuids::detail::sha1 sha1;
			sha1.process_bytes(static_cast<void const *>(key.c_str()), key.size());
			unsigned int hash[5];
			sha1.get_digest(hash);
#ifdef BOOST_BIG_ENDIAN

#else
			for (auto &hb : hash)
			{
				hb = boost::asio::detail::socket_ops::host_to_network_long(hb);
			}
#endif

			std::vector<unsigned char> os;
			auto p = reinterpret_cast<unsigned char *>(hash);
			os.assign(p, p + (sizeof(hash) / sizeof(unsigned char)));
			_shakeResp += encode64(os);
			_shakeResp += "\r\n\r\n";
			boost::asio::async_write(_socket, boost::asio::buffer(_shakeResp, _shakeResp.size()), [this](boost::system::error_code err, size_t size)
			{
				if (err)
				{
					_socket.close();
					_server.leave(shared_from_this());
				}
				else
				{
					do_read_header();
				}
			});

		}
	});
}

void Session::do_read_header()
{
	boost::asio::async_read(_socket, boost::asio::buffer(_readMsg.data(), Message::HEADER_LENGTH), [this](boost::system::error_code err, std::size_t size)
	{
		if (!err)
		{
			_readMsg.decode_header();
			if (_readMsg.get_body_size() == -1)
			{
				_socket.close();
				_server.leave(shared_from_this());
				return;
			}

			if (_readMsg.get_extra_header_size() > 0)
			{
				boost::asio::async_read(_socket, boost::asio::buffer(_readMsg.data() + Message::HEADER_LENGTH, _readMsg.get_extra_header_size()), [this](boost::system::error_code err, std::size_t size)
				{
					if (!err)
					{
						_readMsg.decode_extra_header();
						do_read_mask();
					}
					else
					{
						_socket.close();
						_server.leave(shared_from_this());
					}
				});
			}
			else
			{
				do_read_mask();
			}
		}
		else
		{
			_socket.close();
			_server.leave(shared_from_this());
		}
	});
}

void Session::do_read_mask()
{
	boost::asio::async_read(_socket, boost::asio::buffer(_readMsg.masking(), Message::MASKING_LENGTH), [this](boost::system::error_code err, size_t size)
	{
		if (!err)
		{
			do_read_body();
		}
		else
		{
			_socket.close();
			_server.leave(shared_from_this());
		}
	});
}

void Session::do_read_body()
{
	boost::asio::async_read(_socket, boost::asio::buffer(_readMsg.body(), _readMsg.get_body_size()), [this](boost::system::error_code err, size_t size)
	{
		if (!err)
		{
			_readMsg.decode_body();
			std::string msg((char *)_readMsg.body(), _readMsg.get_body_size());
			_server.diliver(msg);
			do_read_header();
		}
		else
		{
			_socket.close();
			_server.leave(shared_from_this());
		}
	});
}

void Session::diliver(const std::string & msg)
{
	_writeMsg.set_body_size(msg.size());
	_writeMsg.encode_header();
	memcpy(_writeMsg.body(), msg.c_str(), msg.size());
	boost::asio::async_write(_socket, boost::asio::buffer(_writeMsg.data(), _writeMsg.get_data_size()), [this](boost::system::error_code err, size_t size)
	{
		if (!err)
		{
			return;
		}
		else
		{
			std::cout << "write error!!" << std::endl;
		}
	});
}

