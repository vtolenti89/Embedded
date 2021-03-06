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
    String cmdToSend;
    String cmdHtmlToSend;
    int pipeSlot;
    String pipe[PIPEMAXSIZE] = {""};
    String responseBuffer;
    bool isWifiConnected;
    bool isResponseBufferReady;
    bool isChannelFree;
    char * response;
    String currentCommand;
    
  public:
   void init();
   void addToPipe(String  cmd);
   void printPipe();
   void emptyPipe();
   int getPipeSize();
   void popItemFromPipe(int slot);
   void popItemFromPipe(String  cmd);
   String watcher();
   void sendCommand(String  cmd);
   void readResponse();
   bool checkResponse(String  response);
   void printResponse();
   void resetConnection();
   void emptyResponseBuffer();
   void printFlags();
   int sendAttempt;
   int pipeFlusher;
   
   //ESP8266 specific methods
   void setBaudRate();
   void checkFirmware();
   void connect();
   void disconnect();
   void setStationMode();
   void connectionStatus();

   //web request
   void htmlRequest(const String& url, const String& endpoint, const String& reqType, String data = "");
   void getRequest(const String& url, const String& endpoint);
   void postRequest(const String& url, const String& endpoint, const String& data);

   SoftwareSerial SoftSerial;
   
   ESP8266(uint8_t rx, uint8_t tx) : SoftSerial (rx, tx) {
     SoftSerial.begin(BAUD_RATE);
     resetConnection();
   }
};
 
#endif
