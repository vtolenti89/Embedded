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
  delay(1000);
  Serial.print("=> ");
  Serial.print(command);
  Serial.print(" ");
  countSendAttempts = 0;
  found = false;
  response = "";
  
  while(countSendAttempts < SEND_ATTEMPTS) {
    countSendAttempts++;
    Serial.print(".");
    ESP8266.println(command);
    delay(100);
    if(ESP8266.find("OK")){
      Serial.print("OK");
      Serial.println(" ");
      found = true;
      printResponse();
      break;  
    };
  }
    
  if(!found) {
    Serial.print("Fail");  
  }
  
}



void Wifi::printResponse() {
  delay(50);
  Serial.println(getResponse());
}

String Wifi::getResponse() {
  delay(50);
  if (ESP8266.available()){
     return ESP8266.readStringUntil('\n');
  }
}
