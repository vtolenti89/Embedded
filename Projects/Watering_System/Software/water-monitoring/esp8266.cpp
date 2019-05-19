#include <Arduino.h>
#include<SoftwareSerial.h>
#include "esp8266.h"

void ESP8266::init() {
    Serial.println("WIFI INIT");
    //checkFirmware();
    connect();
};

bool ESP8266::addToPipe(String cmd) {
  //char command[cmd.length()+1]; 
  //cmd.toCharArray(command, cmd.length()+1);
  for(pipeSlot = 0; pipeSlot < PIPEMAXSIZE; pipeSlot++) {
    if(pipe[pipeSlot].length()>0){
      //Serial.print("Slot occupied with:");
      //Serial.println(pipe[pipeSlot]);
    } else {
      //Serial.print("Slot is Empty. New data:");
      //Serial.println(cmd);
      pipe[pipeSlot] = cmd;
      return true;
    }
  }
  return false;
}

void ESP8266::printPipe() {
  Serial.println("Printing pipe");
  for(pipeSlot = 0; pipeSlot < PIPEMAXSIZE; pipeSlot++) {
    Serial.println(pipe[pipeSlot]);
    }
  Serial.println("============");
}

void ESP8266::emptyPipe() {
  Serial.println("Emptying pipe");
  for(pipeSlot = 0; pipeSlot < PIPEMAXSIZE; pipeSlot++) {
    pipe[pipeSlot] = "";
  }
};

int ESP8266::getPipeSize() {
  for(pipeSlot = 0; pipeSlot < PIPEMAXSIZE; pipeSlot++) {
      if(pipe[pipeSlot].length() == 0) {
        return pipeSlot;
      }
    }
    return PIPEMAXSIZE;
}

bool ESP8266::popItemFromPipe(int slot) {
  //Serial.println("Popping item from pipe");
  if(pipe[slot]){
    for(pipeSlot = slot; pipeSlot < PIPEMAXSIZE - 1; pipeSlot++) {
      pipe[pipeSlot] = pipe[pipeSlot + 1];
    }
  } else {
    return false;
  }
}

String ESP8266::watcher() {
  //sending new commands if the channel is free
  
  if(getPipeSize() > 0 && isChannelFree) {
    //pipe has data
    Serial.print("Pipe has data.:");
    Serial.println(getPipeSize());
    sendCommand(pipe[0]);
  }
  
  //listening for responses
  readResponse();
  if(isResponseBufferReady) {
    isResponseBufferReady = false;
    isChannelFree = true;
    // popping first item from buffer
    popItemFromPipe(0);
    return responseBuffer; 
  } else {
    return "";
    }
}

void ESP8266::sendCommand(String cmd) {
  Serial.print("Sending command:");
  Serial.println(cmd);
  currentCommand = cmd;
  isChannelFree = false;
  SoftSerial.println(cmd);
 }

void ESP8266::readResponse() {
  if(SoftSerial.available()) {
    responseBuffer = SoftSerial.readStringUntil('\n');
    responseBuffer.trim();
    //char ssid[ssidString.length()]; 
    //ssidString.toCharArray(ssid, ssidString.length());
    isResponseBufferReady = checkResponse(responseBuffer);      
  }

};

bool ESP8266::checkResponse(String response) {
    if (response.length() > 0) {
      Serial.print("Current command:");
      Serial.println(currentCommand);
      //intermediate response
      if (response == "WIFI CONNECTED") {isWifiConnected = true;}
      if (response == "WIFI DISCONNECT") {isWifiConnected = false;}    
      
      if (response == "OK" || response == "SEND OK" || response == "ALREADY CONNECTED"){
        
        if(currentCommand.substring(0) == "AT+CIPSEND" ) {
            if(response == ">") {
                return true;
              } else {
              return false;
            }
        } else {
          return true;
          }
          
         //return true;
       }
      if (response == "ERROR" || response == "FAIL" || response == "SEND FAIL")
        return false;
    }
  }

void ESP8266::printResponse() {
     
};

void ESP8266::setStationMode() {
    // AT+CWMODE (1: Station mode (client), 2 = AP mode (host), 3 : AP + Station mode)
    addToPipe("AT+CWMODE=1");
  }

void ESP8266::setBaudRate() {
  //set baud rate
  addToPipe("AT+UART_DEF=9600,8,1,0,0");
 };
 
void ESP8266::checkFirmware () {
    //AT+GMR check firmware
    addToPipe("AT+GMR");
  };

void ESP8266::connect() {
  Serial.println("...Trying to connect to WIFI");
  // AT+CWJAP connect to wifi

  addToPipe("AT+CWJAP=\"" + String(WIFI_SSID) + "\",\"" + String(WIFI_PASS) + "\"");

  // AT+CIFSR check ip of wifi module
  addToPipe("AT+CIFSR");

  connectionStatus ();
};

void ESP8266::disconnect() {
  // AT+CWQAP disconnect from current WIFI
  addToPipe("AT+CWQAP");  
};

void ESP8266::connectionStatus () {
  // AT+CIPSTATUS status from the connection
  addToPipe("AT+CIPSTATUS");
};


void ESP8266::htmlRequest(String url, String endpoint, String reqType, String data = "") {
  if (!isWifiConnected){
      connect();
    }
  // AT+CIPMUX (0: single connection, 1: multiple connection)
  addToPipe("AT+CIPMUX=1");

  // AT+CWMODE (1: Station mode (client), 2 = AP mode (host), 3 : AP + Station mode)
  addToPipe("AT+CWMODE=1");

  // AT+CIPSTART establishes TCP connection
  addToPipe("AT+CIPSTART=4,\"TCP\",\"" + String(url) + "\",80");

  String cmd = "";
  if(reqType == "GET") {
    cmd = "GET " + endpoint +  " HTTP/1.1 \r\nHost: " + url + "\r\n\r\n";     
  } else if (reqType == "POST") {
    //TODO
    cmd = "POST " + endpoint +  " HTTP/1.1 \r\nHost: " + url + "\r\n\r\n";        
    }

  //test
  //cmd = "GET /posts/42 HTTP/1.1\r\nHost: jsonplaceholder.typicode.com\r\n\r\n";     
  //cmd = "GET /v2/5cdc13222d00005211f5a574 HTTP/1.1\r\nHost: mocky.io\r\n\r\n";     
  // AT+CIPSTART set the command size
  addToPipe("AT+CIPSEND=4," + String(cmd.length() + 2));

  delay(1000);
  // Send the command
  addToPipe(cmd);
 };

 void ESP8266::getRequest(String url, String endpoint){
    htmlRequest(url, endpoint, "GET");
 };

 void ESP8266::postRequest(String url, String endpoint, String data) {
  
 };


 /*

bool ESP8266::sendCommand(String command) {
  Serial.println("SEND:" + command);
  Serial.print("RECEIVE:");
  SoftSerial.println(command);
  while (true && sendTimeout < 5) {
    Serial.print(".");
    sendTimeout++;
    response = getResponse();
    
    response.trim();
    if (response.length() > 0) {
      Serial.println(response);
      //intermediate response
      if (response == "WIFI CONNECTED") {wifiIsConnected = true;}
      if (response == "WIFI DISCONNECT") {wifiIsConnected = false;}    
      
      if (response == "OK" || response == "SEND OK" || response == "ALREADY CONNECTED"){
    
        if(command.indexOf("AT+CIPSEND" >= 0)) {
            if(response == ">")
              return true;
          } else {
              return true;
            }

            //return true;
       }
      if (response == "ERROR" || response == "FAIL" || response == "SEND FAIL")
        return false;
    }
  }
 }
  */
