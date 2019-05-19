#ifndef ESP8266_H
#define ESP8266_H
#include <Arduino.h>
#include<SoftwareSerial.h>

#define WIFI_SSID "UPC6E2796A"
#define WIFI_PASS "Jmre8szre4ez"
//#define WIFI_SSID "FlixRouter"
//#define WIFI_PASS "12345678!"
#define BAUD_RATE 9600
#define PIPEMAXSIZE 10
#define DEBUG true
 
class ESP8266
{  private:
    
    int pipeSlot;
    String pipe[PIPEMAXSIZE] = {};
    String responseBuffer;
    bool isWifiConnected;
    bool isResponseBufferReady;
    bool isChannelFree;
    char * response;
    String currentCommand;
    
  public:
   void init();
   bool addToPipe(String cmd);
   void printPipe();
   void emptyPipe();
   int getPipeSize();
   bool popItemFromPipe(int slot);
   String watcher();
   void sendCommand(String cmd);
   void readResponse();
   bool checkResponse(String response);
   void printResponse();
   
   //ESP8266 specific methods
   void setBaudRate();
   void checkFirmware();
   void connect();
   void disconnect();
   void setStationMode();
   void connectionStatus();

   //web request
   void htmlRequest(String url, String endpoint, String reqType, String data = "");
   void getRequest(String url, String endpoint);
   void postRequest(String url, String endpoint, String data);

   SoftwareSerial SoftSerial;
   
   ESP8266(uint8_t rx, uint8_t tx) : SoftSerial (rx, tx) {
     SoftSerial.begin(BAUD_RATE);
     isWifiConnected = false;
     isChannelFree = true;
   }
};
 
#endif
