#include "Server.h"
#include <utility>
#include <iostream>
#include "Session.h"

using  boost::asio::ip::tcp;

Server::Server(boost::asio::io_context & context, boost::asio::ip::tcp::endpoint & endpoint) : _acceptor(context, endpoint)
{

}

Server::~Server()
{
}

void Server::do_acceptor()
{
	_acceptor.async_accept([this](boost::system::error_code ec, tcp::socket socket)
	{
		if (!ec)
		{
			auto session = std::make_shared<Session>(socket, *this);
			session->start();
			_sessions.insert(session);
			do_acceptor();
		}
		else
		{
			std::cout << "acceptor error!!" << std::endl;
		}
	});
}

void Server::diliver(const std::string &msg)
{
	for (auto &session : _sessions)
	{
		session->diliver(msg);
	}
}

void Server::leave(const std::shared_ptr<Session> & session)
{
	_sessions.erase(session);
}
