#include <Arduino.h>
#include<SoftwareSerial.h>
#include "wifi.h"
 
//Wifi::Wifi(uint8_t rx, uint8_t tx){
  //ESP8266(rx, tx);
//}

void Wifi::init() {
    //ESP8266.begin(BAUD_RATE);
    Serial.println("WIFI INIT");
    
    sendCommand("AT");
    sendCommand("AT+CWMODE=" + String(CWMODE));
    checkFirmware();
    connect();
    connectionStatus();
};

void Wifi::setBaudRate() {
  //set baud rate
  sendCommand("AT+UART_DEF=9600,8,1,0,0");
 }
 
void Wifi::checkFirmware () {
    //AT+GMR check firmware
    sendCommand("AT+GMR");
  };

bool Wifi::connect() {
  //AT+CIPSTATUS check whether it is connected
  sendCommand("AT+CIPSTATUS");
  
  // AT+CWJAP connect to wifi
  sendCommand("AT+CWJAP=\"" + String(WIFI_SSID) + "\",\"" + String(WIFI_PASS) + "\"");

  // AT+CIFSR check ip of wifi module
  sendCommand("AT+CIFSR");
};

bool Wifi::disconnect() {
  // AT+CWQAP disconnect from current WIFI
  sendCommand("AT+CWQAP");  
};

String Wifi::connectionStatus () {
  // AT+CIPSTATUS status from the connection
  sendCommand("AT+CIPSTATUS");
  Serial.println(getResponse());
};

String Wifi::getReq(String url, String endpoint) {
  

};

String Wifi::postReq(String url, String endpoint, String data) {
};

bool Wifi::sendCommand(String command){
  //printing command in the debug window
  delay(500);
  Serial.print("=> ");
  Serial.print(command);
  Serial.print(" ");
  countSendAttempts = 0;
  found = false;
  while(countSendAttempts < SEND_ATTEMPTS)
  {
    Serial.print(".");
    ESP8266.println(command);
    //Serial.println(getResponse());
    if(ESP8266.find("OK")){
      
      found = true;
      break;
    }
    countSendAttempts++;
  }

  if(found == true){
    Serial.println("OK");
    Serial.print(getResponse());
    if(DEBUG) {
      //Serial.println(getResponse());
     }
  }
  
  if(found == false)
  {
    Serial.println("Fail");
    countSendAttempts = 0;
  }
  found = false;
}

String Wifi::getResponse() {
  delay(50);
  
  if (ESP8266.available()){
     String inData = ESP8266.readStringUntil('\n');
     return inData;
  }
  
}
