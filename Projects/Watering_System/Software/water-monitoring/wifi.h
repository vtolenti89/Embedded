#ifndef Wifi_h
#define Wifi_h
#include <Arduino.h>
#include<SoftwareSerial.h>
 
#define _SSID UPC6E2796A
#define _PASS Jmre8szre4ez
#define _BAUD_RATE 115200
#define _SEND_ATTEMPTS 5
#define _DEBUG true
 
class Wifi
{  private:
    uint8_t rx;
    uint8_t tx;
    uint8_t countSendAttempts;
    bool found;
  public:
   void init();
   bool sendCommand(String command);
   bool connect();
   bool disconnect();
   String connectionStatus();
   String getReq(String url, String endpoint);
   String postReq(String url, String endpoint, String data);

   SoftwareSerial ESP8266;
   Wifi(uint8_t rx, uint8_t tx) : ESP8266 (rx, tx) {
      Serial.println("WIFI");
     ESP8266.begin(_BAUD_RATE);
     init();
   }
};
 
#endif
