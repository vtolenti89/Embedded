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
#define lowPowerMode 0x54 // low power mode for reading measurements

QTSensor::QTSensor() {
	// Constructor
	i2c_init();
}


uint8_t QTSensor::getId() {
	
	return i2c_read_from_register(chipAddress, chipId);
}

uint8_t QTSensor::getFirmware() {
	
	return i2c_read_from_register(chipAddress, firmwareVersion);
}

uint8_t QTSensor::getKeyStatus() {
	
	return i2c_read_from_register(chipAddress, keyStatus);
	
}

bool QTSensor::setLowPowerMode(unsigned char intervalTime) {
	
	return i2c_write_to_register(chipAddress, lowPowerMode, intervalTime);
	
}

uint8_t QTSensor::getLowPowerMode() {
	
	return i2c_read_from_register(chipAddress, lowPowerMode);
	
}