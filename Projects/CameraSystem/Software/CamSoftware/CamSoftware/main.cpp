/*
 * CamSoftware.cpp
 *
 * Created: 28.01.2019 12:49:36
 * Author : vtolentino
 */ 

#include <avr/io.h>
#define F_CPU 4000000UL	/* Define CPU frequency here 8MHz */
#include <util/delay.h>
#include "header/qtSensor.h"
#include "header/i2cmaster.h"



const int ledYellow = PIND1;
const int ledGreen = PIND0;



int main(void)
{
	DDRD=0xFF;
	DDRA=0xFF;
	
	PORTD|=0xFF;
	PORTA|=0x00;
	
	//Initialiting modules
	QTSensor qt;
	
	while (1)
	{
		
		PORTD^=(1 << ledGreen);
		
		_delay_ms(2);
		PORTA = qt.getKeyStatus();
		
	}
}