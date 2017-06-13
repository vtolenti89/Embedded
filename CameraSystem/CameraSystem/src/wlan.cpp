/*
 * wlan.cpp
 *
 * Created: 22.05.2017 15:41:12
 *  Author: vito7253
 */ 
#include "wlan.h"
#include "../Protocols/uart.h"

void wlanClass::setUp(){
	uart.setUp(1);
}

void wlanClass::transmit(unsigned int _data){
	uart.transmit(_data);
}

unsigned char wlanClass::receive(){
	return uart.receive();
}

