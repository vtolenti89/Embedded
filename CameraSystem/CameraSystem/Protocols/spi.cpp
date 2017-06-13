/*
 * spi.cpp
 *
 * Created: 22.05.2017 15:47:49
 *  Author: vito7253
 */ 
#include "spi.h"
#include <avr/io.h>
#include <stdint.h>

#define MOSI	3
#define MISO	4
#define SCK		5
	


void spiProtocol::masterInit(){
	//initiating SPI communication
	/* Set MOSI and SCK output, all others input */
	DDRB|= (1 << MOSI)|(1 << SCK);
	DDRB&=~ (1 << MISO);
	/* Enable SPI, Master, set clock rate fck/16 */
	SPCR = (1<<SPE)|(1<<MSTR)|(1<<SPR0);
}

void spiProtocol::masterTrasmit(char _cData)
{
	/* Start transmission */
	SPDR = _cData;
	/* Wait for transmission complete */
	while(!(SPSR & (1<<SPIF)))
	;
}


void spiProtocol::slaveInit(){
	/* Set MISO output, all others input */
	DDRB|= (1<<MISO);
	DDRB&=~((1 << MISO) | (1 << SCK));
	/* Enable SPI */
	SPCR = (1<<SPE);
}


char spiProtocol::slaveReceive(){
	/* Wait for reception complete */
	while(!(SPSR & (1<<SPIF)))
	;
	/* Return Data Register */
	return SPDR;
}