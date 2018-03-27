#include "Message.h"
#include <cstring>
#include <assert.h>
#include <iostream>


Message::Message():_extra_header_length(0)
{
	_datas = (unsigned char *)malloc(sizeof(unsigned char) * (HEADER_LENGTH + INIT_BODY_SIZE + MASKING_LENGTH));
	_capacity = HEADER_LENGTH + INIT_BODY_SIZE + MASKING_LENGTH;
}


Message::~Message()
{
}

unsigned char * Message::data()
{
	return _datas;
}

unsigned char * Message::body()
{
	return _datas + HEADER_LENGTH + _extra_header_length + ((_datas[1] & 0x80) == 0x80 ? MASKING_LENGTH : 0);
}

unsigned char * Message::masking()
{
	return _datas + HEADER_LENGTH + _extra_header_length;
}

const unsigned long long Message::get_data_size()
{
	return  _bodyLength + HEADER_LENGTH  + _extra_header_length + ((_datas[1] & 0x80) == 0x80 ? MASKING_LENGTH : 0);
}

void Message::decode_extra_header()
{
	if (get_extra_header_size() == 2)
	{
		int a = (data() + Message::HEADER_LENGTH)[1];
		int b = ((data() + Message::HEADER_LENGTH)[0] << 8);
		_bodyLength = a | b;
	}
	else if (_extra_header_length == 8)
	{
		unsigned char *extraHeadData = data() + Message::HEADER_LENGTH;
		for (size_t i = 0; i < 8 / 2; i++)
		{
			std::swap(extraHeadData[i], extraHeadData[8 - i - 1]);
		}
		_bodyLength = *(unsigned long long *)extraHeadData;
	}
}

void Message::decode_body()
{
	unsigned char *tmpBody = body();
	unsigned char *tmpMasking = masking();
	for (size_t i = 0; i < _bodyLength; i++)
	{
		tmpBody[i] ^= tmpMasking[i%MASKING_LENGTH];
	}
}

void Message::encode_header()
{
	if (_bodyLength < 126)
	{
		_datas[0] = 0x81;
		_datas[1] = _bodyLength;
		_extra_header_length = 0;
	}
	else if (_bodyLength < 0xffff)
	{
		_datas[0] = 0x81;
		_datas[1] = 126;
		_extra_header_length = 2;
		_datas[3] = (_bodyLength &(0xff));
		_datas[2] = ((_bodyLength >> 8) &(0xff));
	}
	else
	{
		std::cout << "_bodyLength bigger 0xfffff :" << _bodyLength;
		assert(false);
		_datas[0] = 0x81;
		_datas[1] = 127;
		_extra_header_length = 8;
		unsigned char *extraHeadData = data() + Message::HEADER_LENGTH;
		for (size_t i = 0; i < 8; i++)
		{
			extraHeadData[i] = (_bodyLength >> (8 * (7 - i)) & 0xff);
		}
	}

}

void Message::decode_header()
{
	bool fin = (_datas[0] & 0x80) == 0x80;
	if (!fin)
	{
		//_bodyLength = -1;
		//return;
	}
	bool mask = (_datas[1] & 0x80) == 0x80;
	if (!mask)
	{
		_bodyLength = -1;
		return;
	}
	int payload = (_datas[1] & 0x7f);
	if (payload == 126)
	{
		_bodyLength = -2;
		_extra_header_length = 2;
	}
	else if (payload == 127)
	{
		_bodyLength = -3;
		_extra_header_length = 8;
	}
	else
	{
		_bodyLength = payload;
	}
}

void Message::encode(const std::string &data)
{
	_bodyLength = data.size();
	encode_header();
	memcpy(_datas + HEADER_LENGTH, data.c_str(), data.size());
}

void Message::checkResize(size_t size)
{
	if (size <= _capacity)
	{
		return;
	}

	while (_capacity < size) {
		_capacity = (_capacity << 1);
	}
	_datas = (unsigned char *)realloc(_datas, (sizeof(unsigned char) * (_capacity)));
}

