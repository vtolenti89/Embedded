#include <Arduino.h>
#include<SoftwareSerial.h>
#include "esp8266.h"

void ESP8266::init() {
    Serial.println("WIFI INIT");
    //checkFirmware();
    connect();
};

void ESP8266::addToPipe(String & cmd) {
  //char command[cmd.length()+1]; 
  //cmd.toCharArray(command, cmd.length()+1);
  for(pipeSlot = 0; pipeSlot < PIPEMAXSIZE; pipeSlot++) {
    //check if the command already exists in the pipeline
    if(pipe[pipeSlot].indexOf(cmd) > -1) {
        //Serial.println("Command already exists");
        pipeSlot = PIPEMAXSIZE;
      } else {
          if(pipe[pipeSlot].length()>0){
            //Serial.print("Slot occupied with:");
            //Serial.println(pipe[pipeSlot]);
              } else {
                //Serial.print("Slot is Empty. New data:");
                //Serial.println(cmd);
                pipe[pipeSlot] = cmd;
                Serial.println("§§ADDED TO PIPE");
                printPipe();
                return true;
              }
        }
    
  }
  Serial.println("§§NOT POSSIBLE TO ADD TO PIPE");
  printPipe();
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

bool ESP8266::popItemFromPipe(String & cmd) {
  //Serial.println("Popping item from pipe");
  
    for(pipeSlot = 0; pipeSlot < PIPEMAXSIZE - 1; pipeSlot++) {
      if (pipe[pipeSlot].indexOf(cmd) > -1) {
          pipe[pipeSlot] = pipe[pipeSlot + 1];
        }
    }
    if (pipe[pipeSlot].indexOf(cmd) > -1) {
          pipe[pipeSlot] = "";
    }
}

String ESP8266::watcher() {
  

   if(isWifiConnected) {
    popItemFromPipe("AT+CWJAP");
   } 
   
  //sending new commands if the channel is free
  Serial.println("::FLAGS BEFORE:");
  printFlags();
  if(!isChannelFree) {
    sendAttempt++;
      if(sendAttempt > 10) {
        resetConnection();
      }
  } else {
    sendAttempt = 0;
    }
 
  if(getPipeSize() > 0 && isChannelFree) {
    //pipe has data
    Serial.print("Pipe has data:");
    Serial.println(getPipeSize());
    sendCommand(pipe[0]);
  }
  
  //listening for responses
  readResponse();
  Serial.println("::::::FLAGS AFTER:");
  printFlags();
  if(isResponseBufferReady) {
    isResponseBufferReady = false;
    isChannelFree = true;
    // popping first item from buffer
    popItemFromPipe(0);
    //return responseBuffer; 
  } else {
    emptyResponseBuffer();
    //return "";
    }
    return responseBuffer;
}

void ESP8266::sendCommand(String & cmd) {
  Serial.print(">>>Sending command:");
  Serial.println(cmd);
  currentCommand = cmd;
  isChannelFree = false;
  SoftSerial.println(cmd);
 }

void ESP8266::readResponse() {
  if(SoftSerial.available()) {
    //responseBuffer = SoftSerial.readStringUntil('\n');
    responseBuffer = SoftSerial.readString();
    responseBuffer.trim();
    //char ssid[ssidString.length()]; 
    //ssidString.toCharArray(ssid, ssidString.length());
    isResponseBufferReady = checkResponse(responseBuffer);      
  }

};

bool ESP8266::checkResponse(String & response) {
    if (response.length() > 0) {
      Serial.print("Current command:");
      Serial.println(currentCommand);
      Serial.print("->Response:");
      Serial.println(response);
      //intermediate response

      
      
      if (response.indexOf("WIFI CONNECTED") > - 1 
          || response.indexOf("WIFI GOT IP") > - 1
          || response.indexOf("STATUS:2") > -1) {
            isWifiConnected = true;
          }
      if (response.indexOf("WIFI DISCONNECT") > -1
          || response.indexOf("STATUS:4") > -1) {isWifiConnected = false;}
  
      if (currentCommand.indexOf("AT+CIPSEND") > -1  ) {
          Serial.println("...............it is CIPSEND");
            if(response.indexOf(">") > -1 ) {
                Serial.println("...............has >");
                return true;
              } else {
              return false;
            }

            if(response.indexOf("ERROR") > -1 ) {
                Serial.println("...............has ERROR");
                return true;
              } 
        } 

      //exception for bug with ip reader
      if(currentCommand.indexOf("AT+CIFSR") > -1 ) {
        if(response.indexOf("+CIFSR") > -1) {
            return true;
          }
      }
      
      //exception for bug with opening connection
      if(currentCommand.indexOf("AT+CIPSTART") > -1 ) {
          if(response.indexOf("CONN") > -1) {
              return true;
            }
        }

      

      //handle correct messages
      if (response.indexOf("OK") > -1  
          //|| response.indexOf("SEND OK") > -1  
          || response.indexOf("ALREADY CONNECTED") > -1)
       {
         return true;
       }

      //handle general error messages
      if (response.indexOf("ERROR") > -1 
          || response.indexOf("FAIL" ) > -1
          || response.indexOf("SEND FAIL") > -1
          || response.indexOf("busy") > -1)
        {
          return false;
        }

        ///else what to do?
        Serial.println("Message is SOMETHING ELSE!!");
        return false;
    }
    return false;
  }

void ESP8266::printResponse() {
     
};

void ESP8266::resetConnection() {
    isWifiConnected = false;
    isChannelFree = true;
    sendAttempt = 0;
    //TODO add empty pipe 
    //in another point
    emptyPipe();
  }

void ESP8266::emptyResponseBuffer() {
    responseBuffer="";
  }

void ESP8266::setStationMode() {
    // AT+CWMODE (1: Station mode (client), 2 = AP mode (host), 3 : AP + Station mode)
    //addToPipe("AT+CWMODE=1");
    cmdToSend = "AT+CWMODE=1";
    addToPipe(cmdToSend);
  }

void ESP8266::setBaudRate() {
  //set baud rate
  //addToPipe("AT+UART_DEF=9600,8,1,0,0");
  cmdToSend = "AT+UART_DEF=9600,8,1,0,0";
  addToPipe(cmdToSend);
 };
 
void ESP8266::checkFirmware () {
    //AT+GMR check firmware
    //addToPipe("AT+GMR");
    cmdToSend = "AT+GMR";
  addToPipe(cmdToSend);
  };

void ESP8266::connect() {
  Serial.println("...Trying to connect to WIFI");
  // AT+CWJAP connect to wifi
  connectionStatus ();
  if(!isWifiConnected) {
    Serial.println("IT IS NOT CONNECTED");
    addToPipe("AT+CWJAP=\"" + String(WIFI_SSID) + "\",\"" + String(WIFI_PASS) + "\"");  
   } else {
    popItemFromPipe("AT+CWJAP");
    }
  // AT+CIFSR check ip of wifi module
  //addToPipe("AT+CIFSR");  
};

void ESP8266::disconnect() {
  // AT+CWQAP disconnect from current WIFI
  //addToPipe("AT+CWQAP");  
  cmdToSend = "AT+CWQAP";
  addToPipe(cmdToSend);
};

void ESP8266::connectionStatus() {
  // AT+CIPSTATUS status from the connection
  //addToPipe("AT+CIPSTATUS");
  cmdToSend = "AT+CIPSTATUS";
  addToPipe(cmdToSend);
  
};

void ESP8266::printFlags () {
  Serial.print("isWifiConnected:");
  Serial.print(isWifiConnected);
  Serial.print(" | isChannelFree:");
  Serial.print(isChannelFree);
  Serial.print(" | sendAttempt:");
  Serial.print(sendAttempt);
  Serial.print(" | isResponseBufferReady:");
  Serial.print(isResponseBufferReady);
  Serial.print(" | responseBuffer Size:");
  Serial.println(responseBuffer.length());
  }

void ESP8266::htmlRequest(String url, String endpoint, String reqType, String data = "") {
  if (!isWifiConnected){
      connect();
      return;
    }
  // AT+CIPMUX (0: single connection, 1: multiple connection)
  cmdToSend = "AT+CIPMUX=1";
  addToPipe(cmdToSend);

  // AT+CWMODE (1: Station mode (client), 2 = AP mode (host), 3 : AP + Station mode)
  //addToPipe("AT+CWMODE=1");
  cmdToSend = "AT+CWMODE=1";
  addToPipe(cmdToSend);

  // AT+CIPSTART establishes TCP connection
  //addToPipe("AT+CIPSTART=0,\"TCP\",\"" + String(url) + "\",80");
  cmdToSend = "AT+CIPSTART=0,\"TCP\",\"" + String(url) + "\",80";
  addToPipe(cmdToSend);

  if(reqType == "GET") {
    cmdHtmlToSend = "GET " + endpoint +  " HTTP/1.1\r\nHost: " + url + "\r\n\r\n";     
  } else if (reqType == "POST") {
    //TODO
    cmdHtmlToSend = "POST " + endpoint +  " HTTP/1.1\r\nHost: " + url + "\r\n\r\n";        
    }

  // AT+CIPSTART set the command size
  //addToPipe("AT+CIPSEND=0," + String(cmd.length() + 4));
  cmdToSend = "AT+CIPSEND=0," + String(cmdHtmlToSend.length() + 4);
  addToPipe(cmdToSend);
  
  // Send the command
  addToPipe(cmdHtmlToSend);
 };

 void ESP8266::getRequest(String url, String endpoint){
    htmlRequest(url, endpoint, "GET");
 };

 void ESP8266::postRequest(String url, String endpoint, String data) {
  
 };

 
