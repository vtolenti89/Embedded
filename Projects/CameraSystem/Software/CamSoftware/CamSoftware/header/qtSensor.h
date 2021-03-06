#ifndef QTSENSOR_H
#define QTSENSOR_H

class QTSensor {
	public:
		QTSensor();
		uint8_t getId();
		uint8_t getFirmware();
		uint8_t getKeyStatus();
		bool setLowPowerMode(unsigned char intervalTime);
		uint8_t getLowPowerMode();
	};

#endif