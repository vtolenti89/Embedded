#define F_CPU 16000000UL
//#define F_CPU 1000000UL
/*********************/
/**CAMERA**/
#define CAM_ADDRESS			0x21
#define CAM_REG_TEST		0x01


/*
 * CameraSystem.cpp
 *
 * Created: 22.05.2017 15:35:25
 * Author : vito7253
 */ 

#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <stdint.h>
#include "src/camera.h"
#include "src/display.h"
#include "src/sdcard.h"
#include "src/wlan.h"
#include "Protocols/i2c.h"
#include "systemLevel.h"



uint8_t ad = 0x43;
uint8_t val;

volatile unsigned int mili;
volatile unsigned int sec;


int main(void)
{
	systemLevel sys;
	sys.setUp();
	
	while (1) 
	{
		sys.takePhoto();
    }
}
