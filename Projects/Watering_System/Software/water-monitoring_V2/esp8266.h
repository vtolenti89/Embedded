#ifndef ESP8266_H
#define ESP8266_H
#include <Arduino.h>
#include<SoftwareSerial.h>

//#define WIFI_SSID "UPC6E2796A"
//#define WIFI_PASS "Jmre8szre4ez"
#define WIFI_SSID "FlixRouter"
#define WIFI_PASS "12345678!"
#define BAUD_RATE 9600
#define PIPEMAXSIZE 10
#define DEBUG true

class ESP8266
{  private:
    const char * wifi_ssid = "FlixRouter";
    const char * wifi_pass = "12345678!";
    char * cmdToSend = "";
    char * cmdHtmlToSend = "";
    int pipeSlot;
    char * pipe[PIPEMAXSIZE] = {};
    char responseBuffer [100];
    bool isWifiConnected;
    bool isResponseBufferReady;
    bool isChannelFree;
    char * response;
    char * currentCommand;
    
  public:
   void init();
   void addToPipe(char * cmd);
   void printPipe();
   void emptyPipe();
   int getPipeSize();
   bool popItemFromPipe(int slot);
   bool popItemFromPipe(char  * cmd);
   char * watcher();
   void sendCommand(char * cmd);
   void readResponse();
   bool checkResponse(char * response);
   void printResponse();
   void resetConnection();
   void emptyResponseBuffer();
   void printFlags();
   int sendAttempt;
   int pipeFlusher;
   bool isCharArrayEmpty(char * arr);
   int searchForChar(char subString [], char fullText []);
   
   //ESP8266 specific methods
   void setBaudRate();
   void checkFirmware();
   void connect();
   void disconnect();
   void setStationMode();
   void connectionStatus();

   //web request
   void htmlRequest(char * url, char * endpoint, char * reqType, char * data = "");
   void getRequest(char * url, char * endpoint);
   void postRequest(char * url, char * endpoint, char * data);

   SoftwareSerial SoftSerial;
   
   ESP8266(uint8_t rx, uint8_t tx) : SoftSerial (rx, tx) {
     SoftSerial.begin(BAUD_RATE);
     resetConnection();
   }
};
 
#endif
