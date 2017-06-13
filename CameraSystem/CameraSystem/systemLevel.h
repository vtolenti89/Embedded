/*
 * systemLevel.h
 *
 * Created: 06.06.2017 16:33:39
 *  Author: vito7253
 */ 


#ifndef SYSTEMLEVEL_H_
#define SYSTEMLEVEL_H_

#include "src/camera.h"
#include "src/display.h"
#include "src/sdcard.h"
#include "src/wlan.h"
#include "Protocols/i2c.h"
#include "Protocols/spi.h"
#include "Protocols/uart.h"

class systemLevel {
	private:	
	public:		//Creating objects
				i2cProtocol i2c;
				camera cam;
				sdcardClass sdcard;
				wlanClass wlan;
				
				//System methods
				systemLevel();
				void setUp();
				void waitSec();
				
				//Camera methods
				void takePhoto();
				void recordVideo(unsigned int _timeSec);
				void starVideo();
				void stopVideo();
};




#endif /* SYSTEMLEVEL_H_ */