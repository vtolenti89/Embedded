EESchema Schematic File Version 4
LIBS:CameraSystem-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 850  1150 900  1500
U 5BB4C1AE
F0 "Input_Interface" 60
F1 "Input_Interface.sch" 60
F2 "VDD_5V0" O R 1750 1300 60 
F3 "VDD_3V3" O R 1750 1600 60 
F4 "USB_SPI_RST" O R 1750 1900 50 
F5 "USB_SPI_TX" O R 1750 2200 50 
F6 "USB_SPI_RX" I R 1750 2500 50 
$EndSheet
$Sheet
S 3450 1450 1100 5850
U 5BB4D99F
F0 "Microcontroller" 60
F1 "Microcontroller.sch" 60
F2 "VDD_3V3" I L 3450 1600 60 
F3 "MOSI" O L 3450 3350 60 
F4 "MISO" I L 3450 3650 60 
F5 "SCK" O L 3450 3950 60 
F6 "WIFI_EN" O L 3450 2800 60 
F7 "WIFI_RST" O L 3450 3100 60 
F8 "SCL_3V3" O R 4550 1900 60 
F9 "SDA_3V3" B R 4550 1600 60 
F10 "CS" O L 3450 4250 60 
F11 "CAM_D0" I R 4550 3100 60 
F12 "CAM_D1" I R 4550 3350 60 
F13 "CAM_D2" I R 4550 3600 60 
F14 "CAM_D3" I R 4550 3850 60 
F15 "CAM_D4" I R 4550 4100 60 
F16 "CAM_D5" I R 4550 4350 60 
F17 "CAM_D6" I R 4550 4600 60 
F18 "CAM_D7" I R 4550 4850 60 
F19 "CAM_CLK" O R 4550 5850 60 
F20 "CAM_PCLK" I R 4550 5600 60 
F21 "CAM_HSYNC" I R 4550 5350 60 
F22 "CAM_VSYNC" I R 4550 5100 60 
F23 "CAM_XCLK_CTL" O R 4550 6100 60 
F24 "QT_RST" O L 3450 7000 60 
F25 "M_PWM" O R 4550 6350 60 
F26 "M_DIR" O R 4550 6550 60 
F27 "M_EN" O R 4550 6750 60 
F28 "SENSOR1" I R 4550 6950 60 
F29 "SENSOR2" I R 4550 7150 60 
F30 "_SD_DET" I L 3450 6000 60 
F31 "QT_CHN" I L 3450 6750 60 
F32 "UC_SPI_TX" O L 3450 2500 50 
F33 "UC_SPI_RX" I L 3450 2200 50 
F34 "U2_SPI_RST" I L 3450 1900 50 
$EndSheet
$Sheet
S 850  2950 900  1400
U 5BB4D9C1
F0 "Wifi" 60
F1 "Wifi.sch" 60
F2 "VDD_3V3" I R 1750 3150 60 
F3 "WIFI_TX" O R 1750 3400 60 
F4 "WIFI_RX" I R 1750 3650 60 
F5 "WIFI_RST" I R 1750 4150 60 
F6 "WIFI_EN" I R 1750 3900 60 
$EndSheet
$Sheet
S 7500 2200 1150 4050
U 5BB4DA63
F0 "Camera" 60
F1 "Camera.sch" 60
F2 "VDD_3V3" I L 7500 2350 60 
F3 "SDA_3V3" B L 7500 2600 60 
F4 "SCL_3V3" I L 7500 2850 60 
F5 "CAM_D1" O L 7500 3350 60 
F6 "CAM_D3" O L 7500 3850 60 
F7 "CAM_D5" O L 7500 4350 60 
F8 "CAM_D7" O L 7500 4850 60 
F9 "CAM_VSYNC" O L 7500 5100 60 
F10 "CAM_PCLK" O L 7500 5600 60 
F11 "CAM_D0" O L 7500 3100 60 
F12 "CAM_D2" O L 7500 3600 60 
F13 "CAM_D4" O L 7500 4100 60 
F14 "CAM_D6" O L 7500 4600 60 
F15 "CAM_HSYNC" O L 7500 5350 60 
F16 "CAM_CLK" I L 7500 5850 60 
F17 "CAM_XCLK_CTL" I L 7500 6100 60 
$EndSheet
Text Notes 8900 1050 0    60   ~ 0
- LEDs are designed to draw approx 2.5mA \n(Lower power consumption)\n- Jumpers in the modules prevent overloading \nduring Serial Programming
$Sheet
S 7500 700  1150 1200
U 5BB9CC6E
F0 "Display" 60
F1 "Display.sch" 60
F2 "VDD_5V0" I L 7500 850 60 
F3 "VDD_3V3" I L 7500 1150 60 
F4 "SDA_3V3" B L 7500 1450 60 
F5 "SCL_3V3" I L 7500 1750 60 
$EndSheet
$Sheet
S 850  6350 900  1300
U 5BBB389E
F0 "Keypad" 60
F1 "Keypad.sch" 60
F2 "QT_RST_CON" I R 1750 7000 60 
F3 "SCL_3V3_CON" I R 1750 7550 60 
F4 "SDA_3V3_CON" B R 1750 7400 60 
F5 "VDD_3V3_CON" I R 1750 6500 60 
F6 "QT_CHN_CON" O R 1750 6750 60 
$EndSheet
Wire Wire Line
	1750 1600 1900 1600
Wire Wire Line
	1750 1900 3450 1900
Wire Wire Line
	1750 2200 2050 2200
Wire Wire Line
	1750 2500 2200 2500
Wire Wire Line
	1750 3150 1900 3150
Wire Wire Line
	1900 3150 1900 1600
Connection ~ 1900 1600
Wire Wire Line
	2050 3400 2050 2200
Connection ~ 2050 2200
Wire Wire Line
	2200 3650 2200 2500
Connection ~ 2200 2500
Wire Wire Line
	1750 3900 2350 3900
Wire Wire Line
	2350 3900 2350 2800
Wire Wire Line
	2350 2800 3450 2800
Wire Wire Line
	1750 4150 2500 4150
Wire Wire Line
	2500 4150 2500 3100
Wire Wire Line
	2500 3100 3450 3100
Wire Wire Line
	2050 1600 2050 1150
Connection ~ 2050 1600
Wire Wire Line
	1750 1300 1900 1300
Wire Wire Line
	1900 1300 1900 850 
Wire Wire Line
	1900 850  7500 850 
Wire Wire Line
	4550 1600 6650 1600
Wire Wire Line
	1750 4800 2650 4800
Wire Wire Line
	2650 4800 2650 1600
Connection ~ 2650 1600
Wire Wire Line
	2800 5050 2800 3350
Wire Wire Line
	2800 3350 3450 3350
Wire Wire Line
	2950 5300 2950 3650
Wire Wire Line
	2950 3650 3450 3650
Wire Wire Line
	1750 5550 3100 5550
Wire Wire Line
	3100 5550 3100 3950
Wire Wire Line
	3100 3950 3450 3950
Wire Wire Line
	1750 5800 3250 5800
Wire Wire Line
	3250 5800 3250 4250
Wire Wire Line
	3250 4250 3450 4250
Wire Wire Line
	7500 2350 7300 2350
Wire Wire Line
	7300 2350 7300 1150
Connection ~ 7300 1150
Wire Wire Line
	7150 2600 7500 2600
Wire Wire Line
	7150 1450 7150 1600
Connection ~ 7150 1600
Wire Wire Line
	7000 2850 7500 2850
Wire Wire Line
	4550 1900 6800 1900
Wire Wire Line
	7000 1750 7000 1900
Wire Wire Line
	7150 1450 7500 1450
Wire Wire Line
	7000 1750 7500 1750
Connection ~ 7000 1900
Wire Wire Line
	4550 3100 7500 3100
Wire Wire Line
	7500 3350 4550 3350
Wire Wire Line
	4550 3600 7500 3600
Wire Wire Line
	7500 3850 4550 3850
Wire Wire Line
	4550 4100 7500 4100
Wire Wire Line
	7500 4350 4550 4350
Wire Wire Line
	4550 4600 7500 4600
Wire Wire Line
	7500 4850 4550 4850
Wire Wire Line
	4550 5100 7500 5100
Wire Wire Line
	7500 5350 4550 5350
Wire Wire Line
	4550 5600 7500 5600
Wire Wire Line
	7500 5850 4550 5850
Wire Wire Line
	7500 6100 4550 6100
Wire Wire Line
	1900 1600 2050 1600
Wire Wire Line
	2050 2200 3450 2200
Wire Wire Line
	2200 2500 3450 2500
Wire Wire Line
	2050 1600 2650 1600
Wire Wire Line
	2650 1600 3450 1600
Wire Wire Line
	7300 1150 7500 1150
Wire Wire Line
	7150 1600 7150 2600
Wire Wire Line
	7000 1900 7000 2850
Wire Wire Line
	1750 6500 2650 6500
Wire Wire Line
	2650 6500 2650 4800
Connection ~ 2650 4800
Wire Wire Line
	1750 7400 6650 7400
Wire Wire Line
	6650 7400 6650 1600
Connection ~ 6650 1600
Wire Wire Line
	6650 1600 7150 1600
Wire Wire Line
	1750 7550 6800 7550
Wire Wire Line
	6800 7550 6800 1900
Connection ~ 6800 1900
Wire Wire Line
	6800 1900 7000 1900
Wire Wire Line
	1750 6750 3450 6750
Wire Wire Line
	1750 7000 3450 7000
Text Notes 1150 7100 1    118  ~ 0
~~3mW
Text Notes 1150 5600 1    118  ~ 0
~~700mW
Text Notes 1150 3950 1    118  ~ 0
~~710mW
Text Notes 4300 2750 1    118  ~ 0
~~2mW
Text Notes 8450 4100 1    118  ~ 0
~~60mW
Text Notes 8450 1600 1    118  ~ 0
~~8mW
Text Notes 1100 2500 1    98   ~ 0
Pout 1.5W/3.3W
Wire Wire Line
	2200 3650 1750 3650
Wire Wire Line
	2050 3400 1750 3400
Text Notes 8900 1650 0    60   ~ 0
To be done:\n1. Add debug ping in all communication lines
$Sheet
S 4950 6250 1400 1050
U 5BC611AE
F0 "Motor" 50
F1 "Motor.sch" 50
F2 "VDD_3V3_CON" I R 6350 6350 60 
F3 "M_PWM_CON" I L 4950 6350 60 
F4 "M_DIR_CON" I L 4950 6550 60 
F5 "M_EN_CON" I L 4950 6750 60 
F6 "SENSOR1_CON" O L 4950 6950 60 
F7 "SENSOR2_CON" O L 4950 7150 60 
$EndSheet
Wire Wire Line
	4950 6350 4550 6350
Wire Wire Line
	4550 6550 4950 6550
Wire Wire Line
	4550 6750 4950 6750
Wire Wire Line
	4550 6950 4950 6950
Wire Wire Line
	4550 7150 4950 7150
Wire Wire Line
	2050 1150 6500 1150
Wire Wire Line
	6350 6350 6500 6350
Wire Wire Line
	6500 6350 6500 1150
Connection ~ 6500 1150
Wire Wire Line
	6500 1150 7300 1150
$Sheet
S 850  4650 900  1450
U 5BB4DA56
F0 "Memory" 60
F1 "Memory.sch" 60
F2 "VDD_3V3" I R 1750 4800 60 
F3 "_SD_DET" O R 1750 6000 60 
F4 "SD_SCK" I R 1750 5550 60 
F5 "_SD_CS" I R 1750 5800 60 
F6 "SD_DATA_IN_BUF" I R 1750 5050 60 
F7 "SD_DATA_OUT_BUF" O R 1750 5300 60 
$EndSheet
Wire Wire Line
	1750 6000 3450 6000
Wire Wire Line
	2800 5050 1750 5050
Wire Wire Line
	2950 5300 1750 5300
$EndSCHEMATC
