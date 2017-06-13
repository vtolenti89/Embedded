#define F_CPU 16000000UL
/*
 * camera.cpp
 *
 * Created: 22.05.2017 15:38:52
 *  Author: vito7253
 */ 
#include "camera.h"
#include <avr/io.h>


void camera::setUp(){
	//Setting up the clock for the camera
	/*
	DDRB|=(1<<1);
	ICR1 = 2;		//Set TOP value
	OCR1A = 1;		//Set Duty cycle???
	TCCR1A |= 0x82;		//Set COM bits and the first two waveform generator bits
	//TCCR1B |= 0x1A;		//Set second two waveform generator bits and prescalar
	TCCR1B |= 0x11;		//Set second two waveform generator bits and prescalar
	*/
	
	//Setup to 8 MHz
	/*
	  DDRB |= (1 << 3);//pin 11
	  //ASSR &= ~(_BV(EXCLK) | _BV(AS2));
	  ASSR |= (1 << EXCLK) | (1 << AS2);
	  TCCR2A = (1 << COM2A0) | (1 << WGM21) | (1 << WGM20);
	  TCCR2B = (1 << WGM22) | (1 << CS20); //No prescaling
	  //TCCR2B = (1 << WGM22) | (1 << CS21); // 8 Prescaler
	  //TCCR2B = (1 << WGM22) | (1 << CS21) | (1 << CS20); // 32 Prescaler
	  //TCCR2B = (1 << WGM22) | (1 << CS22); // 64 Prescaler
	  //TCCR2B = (1 << WGM22) | (1 << CS22) | (1 << CS20); // 128 Prescaler
	  //TCCR2B = (1 << WGM22) | (1 << CS22) | (1 << CS21); // 256 Prescaler
	  //TCCR2B = (1 << WGM22) | (1 << CS22) | (1 << CS21) | (1 << CS20); // 1024 Prescaler
	  
	  OCR2A = 0;//(F_CPU)/(2*(X+1))
	 */
	
	// Set up the 8MHz output
	DDRD |= (1 << 5);//pin 03
	TCCR0A = _BV(COM0A1) | _BV(COM0B1) | _BV(WGM01) | _BV(WGM00);
	TCCR0B = _BV(WGM02) | _BV(CS00);
	OCR0A = 1;
	OCR0B = 0;
	
}
