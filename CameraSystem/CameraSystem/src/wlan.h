/*
 * wlan.h
 *
 * Created: 22.05.2017 15:41:01
 *  Author: vito7253
 */ 


#ifndef WLAN_H_
#define WLAN_H_
#include "../Protocols/uart.h"

class wlanClass{
	public:	void setUp();
			void Connect(char _wifiId [], char _wifiPassword []);
			void Disconnect();
			void reset();
			
			void transmit(unsigned int _data);
			unsigned char receive();			
			uartProtocol uart;
	};



#endif /* WLAN_H_ */