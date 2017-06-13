/*
 * sdcard.h
 *
 * Created: 22.05.2017 15:40:15
 *  Author: vito7253
 */ 


#ifndef SDCARD_H_
#define SDCARD_H_
#include "../Protocols/spi.h"


class sdcardClass {
	public:	void setUp();
			void write(char _data);
			char read ();
			void eraseData();	
			
			spiProtocol spi;
	};




#endif /* SDCARD_H_ */