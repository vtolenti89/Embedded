/*
 * uart.h
 *
 * Created: 22.05.2017 15:48:12
 *  Author: vito7253
 */ 


#ifndef UART_H_
#define UART_H_

class uartProtocol{
	public:	void setUp(unsigned int ubrr);
	void transmit(unsigned int data);
	unsigned char receive();
};



#endif /* UART_H_ */