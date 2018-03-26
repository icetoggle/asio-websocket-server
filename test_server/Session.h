#pragma once
#include <boost/asio.hpp>
#include "Message.h"
#include "RequestParser.h"

class Server;

const int SHAKE_HAND_MAX_LENGTH = 512;

class Session : public std::enable_shared_from_this<Session> 
{
public:
	Session(boost::asio::ip::tcp::socket &socket, Server& server);

	~Session();

	void start();

	void do_hand_shake();

	void do_read_header();

	void do_read_mask();

	void do_read_body();

	void diliver(const std::string & msg);

private:
	boost::asio::ip::tcp::socket _socket;
	Server &_server;
	Message _readMsg;
	Message _writeMsg;

	bool _isHand;

	RequestParser _shakeHandParser;
	char _shakeHandMsg[SHAKE_HAND_MAX_LENGTH];
	std::string _shakeResp;
	
};

