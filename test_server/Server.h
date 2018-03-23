#pragma once
#include <set>
#include <boost/asio.hpp>
#include "Message.h"
#include "Session.h"
class Server
{
public:
	Server(boost::asio::io_context &context, boost::asio::ip::tcp::endpoint &endpoint);
	
	~Server();

	void do_acceptor();

	void diliver(const std::string &msg);

	void leave(const std::shared_ptr<Session> &session);

private:
	boost::asio::ip::tcp::acceptor _acceptor;

	std::set<std::shared_ptr<Session> > _sessions;


};

