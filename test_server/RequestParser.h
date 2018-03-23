#pragma once
#include <string>

struct Request
{
	std::string _method;
	std::string _host;
	std::string _upgrade;
	std::string _connection;
	std::string _web_socket_key;
	std::string _origin;
	std::string _sec_websocket_protocol;
	std::string _sec_websocket_version;
};
class RequestParser
{
public:
	RequestParser();
	~RequestParser();

	enum EState
	{
		EConsuming,
		EComplete,
		EError,
	};

	EState parse(const char *str, std::size_t size);

	const Request& getRequest()
	{
		return _req;
	}
private:
	EState _state;
	Request _req;
	std::string _content;
	int _nNum;		//连续回车数量
};

