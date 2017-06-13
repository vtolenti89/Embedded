/*
 * i2c.h
 *
 * Created: 22.05.2017 15:46:41
 *  Author: vito7253
 */ 
#include <stdint.h>


#ifndef I2C_H_
#define I2C_H_

class i2cProtocol {
	private:	uint8_t errorFlag;
	public:		void setUp();
				void twiStart();
				void twiAddr(uint8_t _address, uint8_t _errorStatus);
				void twiWriteByte(uint8_t _reg, uint8_t _errorStatus);
				void twiStop();
				void write(uint8_t _address, uint8_t _reg, uint8_t _data);
				uint8_t read(uint8_t _address, uint8_t _reg);
				uint8_t twiRd(uint8_t nack);
				
			
				//Debugging functions
				void setErrorFlag(uint8_t _errorFlag);
				uint8_t getErrorFlag();
			
	};



#endif /* I2C_H_ */