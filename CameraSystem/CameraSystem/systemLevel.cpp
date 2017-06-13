#define F_CPU 16000000UL

/*
 * systemLevel.cpp
 *
 * Created: 06.06.2017 16:33:20
 *  Author: vito7253
 */ 
#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <stdint.h>
#include "systemLevel.h"
#include "src/camera.h"
#include "src/display.h"
#include "src/sdcard.h"
#include "src/wlan.h"
#include "Protocols/i2c.h"
#include "Protocols/spi.h"
#include "Protocols/uart.h"



/**CAMERA**/
#define CAM_ADDRESS			0x21
#define CAM_REG_TEST		0x01


char test [] = "abcdefgh";
int i;

	systemLevel::systemLevel () {
				
}



void systemLevel::setUp(){
	//Setting up outputs
	DDRB=0xFF;
	DDRC=0xFF;
	DDRD=0xFF;
	
	//i2cProtocol i2c;
	//camera cam;
	
	// cleaning and enabling global interrupts
	cli();
	sei();
	
	//Setting up the hardware
	i2c.setUp();
	cam.setUp();
	sdcard.setUp();
	wlan.setUp();
	
}


void systemLevel::takePhoto(){
	i2c.write(CAM_ADDRESS, 0x11, 0x81);
	_delay_ms(1);
	//val = i2c.read(CAM_ADDRESS,0x11);
	i2c.read(CAM_ADDRESS,0x11);
	//val = i2c.read(CAM_ADDRESS_R,val++);
	_delay_ms(10);
	//sdcard.read();
	//sdcard.write('a');
	sdcard.write(test[i]);
	i++;
	if (i>= 8)
	i=0;
	_delay_ms(10);
	wlan.transmit(0x01);
	_delay_ms(10);
	wlan.transmit(0x10);
	_delay_ms(10);
	wlan.transmit(0x11);
	_delay_ms(10);
	wlan.transmit(0x18);
	_delay_ms(10);
	wlan.transmit(0x81);
	_delay_ms(10);
	wlan.transmit(0x22);
	_delay_ms(10);
	wlan.transmit(0x33);
	_delay_ms(10);
	wlan.transmit(0x44);
	_delay_ms(10);
	wlan.transmit(0x55);
	_delay_ms(10);
	wlan.transmit(0x66);
	_delay_ms(10);
	wlan.transmit(0x77);
	_delay_ms(10);
	wlan.transmit(0xFF);
	_delay_ms(10);
	//PORTB|=(1<<5);
	
}

