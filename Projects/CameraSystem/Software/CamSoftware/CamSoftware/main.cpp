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
	uint8_t temp = 0;
	while (1)
	{
		
		PORTD^=(1 << ledGreen);
		
		
		PORTA = qt.getKeyStatus();
		//PORTA = qt.getFirmware();
		
		//PORTA = qt.getLowPowerMode();
		
		//_delay_ms(1000);

		if (qt.setLowPowerMode(255)) {
			PORTD^=(1 << ledYellow);
		};
			
		//if(temp >= 254) {
			//temp = 0;
		//}
		
		
	}
}