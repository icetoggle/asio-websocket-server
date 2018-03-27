#pragma once
#include <string>
class Message
{
public:
	Message();
	~Message();
	enum
	{
		HEADER_LENGTH = 2,
		MAX_BODY_LENGTH = 0xffff,
		MASKING_LENGTH = 4,
	};

	unsigned char* data();

	unsigned char * body();

	unsigned char* masking();

	const unsigned long long get_data_size();

	const unsigned long long get_extra_header_size()
	{
		return _extra_header_length;
	}

	void decode_extra_header();

	void decode_body();

	const unsigned long long get_body_size()
	{
		return _bodyLength;
	}

	void set_body_size(std::size_t size)
	{
		_bodyLength = size;
	}

	void encode_header();

	void decode_header();

	void encode(const std::string &data);

private:
	unsigned char _datas[HEADER_LENGTH + MAX_BODY_LENGTH + MASKING_LENGTH  + 1];
	unsigned long long _bodyLength;
	unsigned long long _extra_header_length;
};

