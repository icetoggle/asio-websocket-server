#include "RequestParser.h"
#include <boost/algorithm/string.hpp>
#include <vector>

static const std::string METHOD = "GET /chat HTTP/1.1";
static const std::string HOST_PRE = "Host: ";
static const std::string UPGRADE = "Upgrade: ";
static const std::string CONNECTION = "Connection: ";
static const std::string WEBSOCK_KEY = "Sec-WebSocket-Key: ";
static const std::string ORIGIN = "Origin: ";
static const std::string WEBSOCKET_VERSION = "Sec-WebSocket-Version: ";

RequestParser::RequestParser(): _state(EConsuming), _nNum(0)
{
}


RequestParser::~RequestParser()
{
}

RequestParser::EState RequestParser::parse(const char * str, std::size_t size)
{
	for (std::size_t i = 0; i < size; ++i)
	{
		_content.push_back(str[i]);
		if (str[i] == '\n')
		{
			++_nNum;
			boost::trim(_content);
			if (boost::starts_with(_content, METHOD))
			{
				_req._method = _content;
			}
			else if (boost::starts_with(_content, HOST_PRE))
			{
				_req._host = _content;
			}
			else if (boost::starts_with(_content, UPGRADE))
			{
				_req._upgrade = _content;
			}
			else if (boost::starts_with(_content, CONNECTION))
			{
				_req._connection = _content;
			}
			else if (boost::starts_with(_content, WEBSOCK_KEY))
			{
				boost::trim(_content);
				auto it = boost::algorithm::make_split_iterator(_content, boost::token_finder(boost::is_any_of(" ")));
				++it;
				if (it != decltype(it)())
				{
					_req._web_socket_key = std::move(boost::copy_range<std::string>(*it));
				}
				else
				{
					return EError;
				}
			}
			else if (boost::starts_with(_content, ORIGIN))
			{
				boost::algorithm::trim(_content);
				auto it = boost::algorithm::make_split_iterator(_content, boost::token_finder(boost::is_any_of(" ")));
				++it;
				if (it != decltype(it)())
				{
					_req._origin = std::move(boost::copy_range<std::string>(*it));
				}
				else
				{
					return EError;
				}
			}
			else if (boost::starts_with(_content, WEBSOCKET_VERSION))
			{
				_req._sec_websocket_version = _content;
			}

			_content.clear();
			if (_nNum == 2)
			{
				return EComplete;
			}
		}
		else if (str[i] != '\r' && str[i] != '\n')
		{
			_nNum = 0;
		}

	}
	return EConsuming;
}
