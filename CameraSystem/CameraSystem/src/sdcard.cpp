/*
 * sdcard.cpp
 *
 * Created: 22.05.2017 15:40:25
 *  Author: vito7253
 */ 
#include "sdcard.h"
#include <avr/io.h>
#include <stdint.h>
#include "../Protocols/spi.h"

#define CS	7

void sdcardClass::setUp(){
	
}

void sdcardClass::write(char _data){
	DDRD|=(1 << CS);
	PORTD&=~(1 << CS);
	spi.masterInit();
	spi.masterTrasmit(_data);
	PORTD|=(1 << CS);
}

char sdcardClass::read(){
	DDRD&=~(1 << CS);
	spi.slaveInit();
	return spi.slaveReceive();
}

void sdcardClass::eraseData(){
	
}

