/*
 * spi.h
 *
 * Created: 22.05.2017 15:47:39
 *  Author: vito7253
 */ 


#ifndef SPI_H_
#define SPI_H_
#include <stdint.h>

class spiProtocol{
	public:	void setUp();
			void masterInit();
			void slaveInit();
			void masterTrasmit(char _cData);
			char slaveReceive();
	};




#endif /* SPI_H_ */