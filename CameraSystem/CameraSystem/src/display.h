/*
 * display.h
 *
 * Created: 22.05.2017 15:39:32
 *  Author: vito7253
 */ 
#ifndef DISPLAY_H_
#define DISPLAY_H_
#include <stdint.h>


class displayClass {
	public:	void setUp();
			void writeLine(uint8_t _line, char _val []);
			void writePoint(uint8_t _xPos, uint8_t _yPos, char _character);
			void clearLine(uint8_t _line);
			void clearPoint(uint8_t _xPos, uint8_t _yPos);
			void clearDisplay();
			void reset();
	};



#endif /* DISPLAY_H_ */