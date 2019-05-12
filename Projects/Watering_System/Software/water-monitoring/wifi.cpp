#include <Arduino.h>
#include<SoftwareSerial.h>
#include "wifi.h"
 
//Wifi::Wifi(uint8_t rx, uint8_t tx){
  //ESP8266(rx, tx);
//}

void Wifi::init() {
    //ESP8266.begin(BAUD_RATE);
    Serial.println("INIT");
    sendCommand("AT");
};

bool Wifi::connect() {
    

};

bool Wifi::disconnect() {
    

};

String Wifi::connectionStatus () {
  
};

String Wifi::getReq(String url, String endpoint) {
  

};

String Wifi::postReq(String url, String endpoint, String data) {
};

bool Wifi::sendCommand(String command){
  //printing command in the debug window
  delay(500);
  Serial.print(". at command => ");
  Serial.print(command);
  Serial.print(" ");
  countSendAttempts = 0;
  found = false;
  Serial.println("Sending command");
  while(countSendAttempts < _SEND_ATTEMPTS)
  {
    Serial.println("waiting");
    ESP8266.println(command);//at+cipsend
    if(ESP8266.find("OK")){
      found = true;
      break;
    }
    countSendAttempts++;
  }
  
  if(found == true){
    Serial.println("OK");
    if(_DEBUG) {
      Serial.println(ESP8266.readStringUntil('\n'));
     }
  }
  
  if(found == false)
  {
    Serial.println("Fail");
    countSendAttempts = 0;
  }
  found = false;
}
