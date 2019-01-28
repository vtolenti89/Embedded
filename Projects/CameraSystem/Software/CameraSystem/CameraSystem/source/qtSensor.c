/*
 * qtSensor.c
 *
 * Created: 03.12.2018 13:22:18
 *  Author: vtolentino
 */ 
#include <avr/io.h>
#include "../header/qtSensor.h"
#include "../header/i2cmaster.h"

#define chipAddress 0x1B

// Memory addresses
#define chipId 0x00 // should read back 0x2E
#define firmwareVersion 0x01 //should read back e.g. 0x15
#define detectionStatus 0x02 // calibrate | overflow |5|4|3|2|1|touch
#define keyStatus 0x03 //return the keys touched reserved|6|5|4|3|2|1|0



uint8_t getId() {
	
	unsigned char ret;
	i2c_init();
	if(i2c_start_wait((chipAddress << 1) | I2C_WRITE)) {
		if (!i2c_write(chipId)){
			// Write was successful
			if (!i2c_rep_start((chipAddress << 1 ) | I2C_READ)) {
				// Device is accessible
				ret = i2c_readNak();
				i2c_stop();
				return ret;
				};
			};
		};
	i2c_stop();
	return 0;
}


uint8_t getFirmware() {
	
	unsigned char ret;
	i2c_init();
	if(i2c_start_wait((chipAddress << 1) | I2C_WRITE)) {
		if (!i2c_write(firmwareVersion)){
			// Write was successful
			if (!i2c_rep_start((chipAddress << 1 ) | I2C_READ)) {
				// Device is accessible
				ret = i2c_readNak();
				i2c_stop();
				return ret;
			};
		};
	};
	i2c_stop();
	return 0;
}

uint8_t getKeyStatus() {
	
	unsigned char ret;
	i2c_init();
	if(i2c_start_wait((chipAddress << 1) | I2C_WRITE)) {
		if (!i2c_write(keyStatus)){
			// Write was successful
			if (!i2c_rep_start((chipAddress << 1 ) | I2C_READ)) {
				// Device is accessible
				ret = i2c_readNak();
				i2c_stop();
				return ret;
			};
		};
	};
	i2c_stop();
	return 0;
}