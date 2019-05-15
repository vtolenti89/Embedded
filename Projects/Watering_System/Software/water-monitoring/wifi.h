#ifndef Wifi_h
#define Wifi_h
#include <Arduino.h>
#include<SoftwareSerial.h>
 
//#define WIFI_SSID "UPC6E2796A"
//#define WIFI_PASS "Jmre8szre4ez"
#define WIFI_SSID "FlixRouter"
#define WIFI_PASS "12345678!"
#define BAUD_RATE 9600
#define SEND_ATTEMPTS 5
#define DEBUG true
 
class Wifi
{  private:
    uint8_t rx;
    uint8_t tx;
    uint8_t countSendAttempts;
    bool successfulResponse;
    String response;
    
  public:
   bool sendTimeout;
   bool wifiIsConnected;
   void init();
   bool sendCommandOld(String command);
   bool sendCommand(String command);
   String getResponse();
   void setBaudRate();
   void printResponse();
   void checkFirmware();
   bool connect();
   bool disconnect();
   String connectionStatus();
   void htmlRequest(String url, String endpoint, String reqType, String data = "");
   String getRequest(String url, String endpoint);
   String postRequest(String url, String endpoint, String data);
   String getReq(String url, String endpoint);
   String postReq(String url, String endpoint, String data);

   SoftwareSerial ESP8266;
   Wifi(uint8_t rx, uint8_t tx) : ESP8266 (rx, tx) {
     ESP8266.begin(BAUD_RATE);
   }
};
 
#endif
