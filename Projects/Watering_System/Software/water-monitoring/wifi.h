#ifndef Wifi_h
#define Wifi_h
#include <Arduino.h>
#include<SoftwareSerial.h>
 
//#define WIFI_SSID UPC6E2796A
//#define WIFI_PASS Jmre8szre4ez
#define WIFI_SSID "FlixRouter"
#define WIFI_PASS "12345678!"
#define BAUD_RATE 9600
#define SEND_ATTEMPTS 5
#define DEBUG true
#define CWMODE "1" // AT+CWMODE (1: Station mode (client), 2 = AP mode (host), 3 : AP + Station mode)
 
class Wifi
{  private:
    uint8_t rx;
    uint8_t tx;
    uint8_t countSendAttempts;
    bool found;
  public:
   void init();
   bool sendCommand(String command);
   String getResponse();
   void setBaudRate();
   void checkFirmware();
   bool connect();
   bool disconnect();
   String connectionStatus();
   String getReq(String url, String endpoint);
   String postReq(String url, String endpoint, String data);

   SoftwareSerial ESP8266;
   Wifi(uint8_t rx, uint8_t tx) : ESP8266 (rx, tx) {
     ESP8266.begin(BAUD_RATE);
     //init();
   }
};
 
#endif
