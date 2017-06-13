#define F_CPU 16000000UL
/*
 * i2c.cpp
 *
 * Created: 22.05.2017 15:46:55
 *  Author: vito7253
 */ 
#include "i2c.h"
#include <avr/io.h>
#include <util/delay.h>



#define	START			0x08
#define	REPEAT_START	0x10
#define	ARB_LOST		0x38
#define NACK			0x38
#define MT_SLA_ACK		0x18
#define MT_SLA_NACK		0x20
#define MT_DATA_ACK		0x28
#define MT_DATA_NACK	0x30
#define MR_SLA_ACK		0x40
#define MR_SLA_NACK		0x48
#define MR_DATA_ACK		0x50
#define MR_DATA_NACK	0x58


//Error flags
#define NO_ERROR		0x00 //No error in the communication
#define START_ERROR		0x01 //A communication could not be established
#define MT_SLA_ERROR	0x02 //The address could not be reached
#define MT_DATA_ERROR	0x03 //The data has not reached the slave
#define MR_SLA_ERROR	0x04 //The address could not reach the master
#define MR_DATA_ERROR	0x05 //The data could not reach the master

uint8_t dat;

uint8_t i2cProtocol::twiRd(uint8_t nack){
	if (nack){
		TWCR = _BV(TWINT) | _BV(TWEN);
		while ((TWCR & _BV(TWINT)) == 0); /* wait for transmission */
		if ((TWSR & 0xF8) != MR_DATA_NACK)
			setErrorFlag(MR_DATA_ERROR);
		return TWDR;
	}
	else{
		TWCR = _BV(TWINT) | _BV(TWEN) | _BV(TWEA);
		while ((TWCR & _BV(TWINT)) == 0); /* wait for transmission */
		if ((TWSR & 0xF8) != MR_DATA_ACK)
			setErrorFlag(MR_DATA_ERROR);
		return TWDR;
	}
}

void i2cProtocol::twiStart(){
	//Sending a start condition
	TWCR = (1<<TWINT)  | (1 << TWSTA) | (1 << TWEN );
	
	//Wait for TWINT Flag set
	while (!(TWCR & (1<<TWINT)));
	
	//Check value of the TWI Status
	if ((TWSR & 0xF8) != START)
	setErrorFlag(START_ERROR);
}

void i2cProtocol::twiStop(){
	//Sending the stop condition
	TWCR = (1 << TWINT) | (1 << TWEN) | (1 << TWSTO);
}

void i2cProtocol::twiAddr(uint8_t _address, uint8_t _errorStatus){
	//Loading the address and the write command and clearing the TWINT
	TWDR = _address;
	TWCR = (1 << TWINT) | (1 << TWEN);
	
	//Wait for TWINT Flag set and (N)ACK has been received
	while (!(TWCR & (1<<TWINT)));
	
	//Check value of TWI Status
	if ((TWSR & 0xF8) != _errorStatus)
	setErrorFlag(MT_SLA_ERROR);
}

void i2cProtocol::twiWriteByte(uint8_t _reg, uint8_t _errorStatus){
	//Loading data into TWDR and clearing the TWINT
	TWDR = _reg;
	TWCR = (1 << TWINT) | (1 << TWEN);
	
	//Wait for TWINT Flag set
	while (!(TWCR & (1<<TWINT)));
	
	//Check the value of TWI status
	if ((TWSR & 0xF8) != _errorStatus)
	setErrorFlag(MT_DATA_ERROR);
}

void i2cProtocol::write(uint8_t _address, uint8_t _reg, uint8_t _data){
	_delay_ms(1);
	twiStart();
	twiAddr((_address << 1), MT_SLA_ERROR);
	twiWriteByte(_reg, MT_DATA_ACK);
	twiWriteByte(_data, MT_DATA_ACK);
	twiStop();
}

uint8_t i2cProtocol::read(uint8_t _address, uint8_t _reg){
	
	twiStart();
	twiAddr((_address << 1), MT_SLA_ERROR);
	twiWriteByte(_reg, MT_DATA_ACK);
	twiStop();
	_delay_ms(1);
	twiStart();
	twiAddr(((_address << 1) | 0x01), MR_SLA_ERROR);
	dat = twiRd(1);
	twiStop();
	return TWDR;
}


//Debugging functions
void i2cProtocol::setErrorFlag(uint8_t _errorFlag){
	errorFlag = _errorFlag;	
}

uint8_t i2cProtocol::getErrorFlag(){
	return errorFlag;
}

void i2cProtocol::setUp(){
	//set up twi for 100khz
    //TWSR &= ~3;//disable prescaler for TWI
	
	//Setting prescaling
	//TWSR &= ~ ((1 << TWPS0) | (1 << TWPS1)); //No prescaling
	TWSR |= (1 << TWPS0); // 4 Prescaling
	
	//freq = CPU / (16 + 2*TWBR * prescaler)
    TWBR = 72;//set to 100khz		
	//TWBR = 242;//set to 32khz		
}
