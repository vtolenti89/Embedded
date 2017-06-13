/*
 * uart.cpp
 *
 * Created: 22.05.2017 15:48:23
 *  Author: vito7253
 */ 
#include "uart.h"
#include <avr/io.h>

#define FOSC 1843200 // Clock Speed
#define BAUD 9600
#define MYUBRR FOSC/16/BAUD-1

void uartProtocol::setUp(unsigned int ubrr){
	/*Set baud rate */
	//UBRR0H = (unsigned char)(ubrr>>8);
	UBRR0H = (unsigned char)(MYUBRR>>8);
	//UBRR0L = (unsigned char)ubrr;
	UBRR0L = (unsigned char)MYUBRR;
	/*Enable receiver and transmitter */
	UCSR0B = (1<<RXEN0)|(1<<TXEN0);
	/* Set frame format: 8data, 2stop bit */
	UCSR0C = (1<<USBS0)|(3<<UCSZ00);
}

void uartProtocol::transmit(unsigned int data){
	/*
	//Sending Frames with 5 to 8 Data Bit
	// Wait for empty transmit buffer
	while ( !( UCSRnA & (1<<UDREn)) )
	;
	// Put data into buffer, sends the data
	UDRn = data;
	//Sending Frames with 5 to 8 Data Bit END
	*/
	while ( !( UCSR0A & (1<<UDRE0)) )
	;
	// Put data into buffer, sends the data
	UDR0 = data;
	
	
	
	
	/*
	//Sending Frames with 9 Data Bit
	// Wait for empty transmit buffer
	while ( !( UCSRnA & (1<<UDREn))) )
	;
	// Copy 9th bit to TXB8
	UCSRnB &= ~(1<<TXB8);
	if ( data & 0x0100 )
	UCSRnB |= (1<<TXB8);
	// Put data into buffer, sends the data
	UDRn = data;
	//Sending Frames with 9 Data Bit END
	*/
}

unsigned char uartProtocol::receive(){
	/*
	// Wait for data to be received
	while ( !(UCSRnA & (1<<RXCn)) )
	;
	// Get and return received data from buffer
	return UDRn;
	*/
	while ( !(UCSR0A & (1<<RXC0)) )
	;
	return UDR0;
	
	
	/*
	unsigned char status, resh, resl;
	// Wait for data to be received
	while ( !(UCSRnA & (1<<RXCn)) )
	;
	// Get status and 9th bit, then data
	// from buffer
	status = UCSRnA;
	resh = UCSRnB;
	resl = UDRn;
	// If error, return -1
	if ( status & (1<<FEn)|(1<<DORn)|(1<<UPEn) )
	return -1;
	// Filter the 9th bit, then return
	resh = (resh >> 1) & 0x01;
	return ((resh << 8) | resl);
	*/
	

}