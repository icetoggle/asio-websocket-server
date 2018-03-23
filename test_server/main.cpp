#include <boost/asio.hpp>
#include <iostream>
#include <string>
#include "Server.h"

int main()
{
	boost::asio::io_context io_context;
	boost::asio::ip::tcp::endpoint endPoint(boost::asio::ip::tcp::v4(), 8080);
	Server server(io_context, endPoint);
	server.do_acceptor();
	io_context.run();
	return 0;
}