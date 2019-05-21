#include <Arduino.h>
#include<SoftwareSerial.h>
#include "esp8266.h"

void ESP8266::init() {
    Serial.println("WIFI INIT");
    //checkFirmware();
    connect();
};

void ESP8266::addToPipe(char  * cmd) {
  Serial.print("Incoming data pipe:");
  Serial.println(cmd);
  for(pipeSlot = 0; pipeSlot < PIPEMAXSIZE; pipeSlot++) {
    if(isCharArrayEmpty(pipe[pipeSlot])){
      Serial.print("Slot is Empty. New data:");
      Serial.println(cmd);
      pipe[pipeSlot] = cmd;
      pipeSlot = PIPEMAXSIZE; //for breaking loop
    } else {
      Serial.print("Slot is Full with:");
      Serial.println(pipe[pipeSlot]);
    }
  }
  printPipe();
  // after using the pointer, point it back to null
  //cmdToSend = NULL;
  //free(cmdToSend);
}

void ESP8266::printPipe() {
  Serial.println("Printing pipe:");
  Serial.println("^^^^^^^^^^");
  for(pipeSlot = 0; pipeSlot < PIPEMAXSIZE; pipeSlot++) {
    Serial.println(pipe[pipeSlot]);
    }
  Serial.println("vvvvvvvvvv");
}

void ESP8266::emptyPipe() {
  Serial.println("Emptying pipe");
  for(pipeSlot = 0; pipeSlot < PIPEMAXSIZE; pipeSlot++) {
    pipe[pipeSlot] = NULL;
  }
};

int ESP8266::getPipeSize() {
  for(pipeSlot = 0; pipeSlot < PIPEMAXSIZE; pipeSlot++) {
      if(isCharArrayEmpty(pipe[pipeSlot])) {
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

bool ESP8266::popItemFromPipe(char * cmd) {
  //Serial.println("Popping item from pipe");
  
    for(pipeSlot = 0; pipeSlot < PIPEMAXSIZE - 1; pipeSlot++) {
      if (searchForChar(cmd, pipe[pipeSlot]) > -1) {
          pipe[pipeSlot] = pipe[pipeSlot + 1];
        }
    }
    if (searchForChar(cmd, pipe[pipeSlot]) > -1) {
          pipe[pipeSlot] = "";
    }
}

char * ESP8266::watcher() {
  

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

  Serial.print("PIPE SIZE:");
  Serial.println(getPipeSize());
    Serial.print("CH FREE:");
  Serial.println(isChannelFree);
  if(getPipeSize() > 0 && isChannelFree) {
    Serial.println("I AM INSIDE");
    //pipe has data
    Serial.print("Pipe has data:");
    Serial.println(getPipeSize());
    sendCommand(pipe[0]);
  }
  Serial.println("JUMPING");
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

void ESP8266::sendCommand(char * cmd) {
  Serial.print(">>>Sending command:");
  Serial.println(cmd);
  currentCommand = cmd;
  isChannelFree = false;
  SoftSerial.println(cmd);
 }

void ESP8266::readResponse() {
  if(SoftSerial.available()) {
    SoftSerial.readStringUntil('\n').toCharArray(responseBuffer,strlen(responseBuffer));
    //responseBuffer = SoftSerial.readString().toCharArray(responseBuffer,);
    //char ssid[ssidString.length()]; 
    //ssidString.toCharArray(ssid, ssidString.length());
    isResponseBufferReady = checkResponse(responseBuffer);      
  }

};

bool ESP8266::checkResponse(char * response) {
    Serial.print("CHECKING response:");
    Serial.println(response);
    if (!isCharArrayEmpty(response)) {
      Serial.print("Current command:");
      Serial.println(currentCommand);
      Serial.print("->Response:");
      Serial.println(response);
      //intermediate response

      
      
      if (searchForChar("WIFI CONNECTED", response) > - 1 
          || searchForChar("WIFI GOT IP",response) > - 1
          || searchForChar("STATUS:2",response) > -1) {
            isWifiConnected = true;
          }
      if (searchForChar("WIFI DISCONNECT",response) > -1
          || searchForChar("STATUS:4",response) > -1) {isWifiConnected = false;}
  
      if (searchForChar("AT+CIPSEND", currentCommand) > -1  ) {
          Serial.println("...............it is CIPSEND");
            if(searchForChar(">", response) > -1 ) {
                Serial.println("...............has >");
                return true;
              } else {
              return false;
            }

            if(searchForChar("ERROR", response) > -1 ) {
                Serial.println("...............has ERROR");
                return true;
              } 
        } 

      //exception for bug with ip reader
      if(searchForChar("AT+CIFSR", currentCommand) > -1 ) {
        if(searchForChar("+CIFSR", response) > -1) {
            return true;
          }
      }
      
      //exception for bug with opening connection
      if(searchForChar("AT+CIPSTART", currentCommand) > -1 ) {
          if(searchForChar("CONN", response) > -1) {
              return true;
            }
        }

      

      //handle correct messages
      if (searchForChar("OK", response) > -1  
          //|| response.indexOf("SEND OK") > -1  
          || searchForChar("ALREADY CONNECTED", response) > -1)
       {
         return true;
       }

      //handle general error messages
      if (searchForChar("ERROR", response) > -1 
          || searchForChar("FAIL", response ) > -1
          || searchForChar("SEND FAIL", response) > -1
          || searchForChar("busy", response) > -1)
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
    responseBuffer[100]={0};
  }

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
    //addToPipe("AT+GMR");
  addToPipe(cmdToSend);
  };

void ESP8266::connect() {
  Serial.println("...Trying to connect to WIFI");
  // AT+CWJAP connect to wifi
  connectionStatus();
  if(!isWifiConnected) {
    
    Serial.println("Piping command to wifi");
    cmdToSend = strcpy(cmdToSend, "AT+CWJAP=\"");
    strcat(cmdToSend, wifi_ssid);
    strcat(cmdToSend,"\",\"");
    strcat(cmdToSend,WIFI_PASS);
    strcat(cmdToSend,"\"");
    Serial.println(cmdToSend);
    addToPipe(cmdToSend);
    
   } 
   else {
    Serial.println("remove command for wifi");
    popItemFromPipe("AT+CWJAP");
    }
  // AT+CIFSR check ip of wifi module
  addToPipe("AT+CIFSR");  
  
};

void ESP8266::disconnect() {
  // AT+CWQAP disconnect from current WIFI
  addToPipe("AT+CWQAP");  
};

void ESP8266::connectionStatus() {
  // AT+CIPSTATUS status from the connection
  Serial.println("Check connection status");
  addToPipe("AT+CIPSTATUS");
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
  }

void ESP8266::htmlRequest(char * url, char * endpoint, char * reqType, char * data = "") {
  if (!isWifiConnected){
      connect();
      return;
    }
  // AT+CIPMUX (0: single connection, 1: multiple connection)
  addToPipe("AT+CIPMUX=1");

  // AT+CWMODE (1: Station mode (client), 2 = AP mode (host), 3 : AP + Station mode)
  addToPipe("AT+CWMODE=1");

  // AT+CIPSTART establishes TCP connection
  cmdToSend = strcpy(cmdToSend, "AT+CIPSTART=0,\"TCP\",\"");
  strcat(cmdToSend, url);
  strcat(cmdToSend,"\",80");
  addToPipe(cmdToSend);

  if(reqType == "GET") {
    cmdHtmlToSend = strcpy(cmdHtmlToSend, "GET ");
    strcat(cmdHtmlToSend, endpoint);
    strcat(cmdHtmlToSend, " HTTP/1.1\r\nHost: ");
    strcat(cmdHtmlToSend, url);
    strcat(cmdHtmlToSend, "\r\n\r\n");
  } else if (reqType == "POST") {
    //TODO
    //cmdHtmlToSend = "POST " + endpoint +  " HTTP/1.1\r\nHost: " + url + "\r\n\r\n";        
    cmdHtmlToSend = strcpy(cmdHtmlToSend, "POST ");
    strcat(cmdHtmlToSend, endpoint);
    strcat(cmdHtmlToSend, " HTTP/1.1\r\nHost: ");
    strcat(cmdHtmlToSend, url);
    strcat(cmdHtmlToSend, "\r\n\r\n");
    }

  // AT+CIPSTART set the command size
  //cmdToSend = "AT+CIPSEND=0," + String(cmdHtmlToSend.length() + 4);
  cmdToSend = strcpy(cmdToSend, "AT+CIPSEND=0,");
  strcat(cmdToSend, strlen(cmdHtmlToSend) + 4);
  addToPipe(cmdToSend);
  
  // Send the command
  addToPipe(cmdHtmlToSend);
 };

 void ESP8266::getRequest(char * url, char * endpoint){
    htmlRequest(url, endpoint, "GET");
 };

 void ESP8266::postRequest(char * url, char * endpoint, char * data) {
  
 };

 bool ESP8266::isCharArrayEmpty(char * arr) {

  /*if ((arr != NULL) && (arr[0] == '\0')) {
     return true;
  } else {
    return false;
    }*/
    if ((arr == NULL) || (arr[0] == '\0') || (arr[0] == "")) {
     return true;
  } else {
    return false;
    }
 }

//return first index of substring or -1 for not found
int ESP8266::searchForChar(char subString [], char fullText [])
{
    if(strstr(fullText, subString) == NULL) {
      return -1;
    } else {
        return strstr(fullText, subString);
      }
}


/*
char * ESP8266::increaseArray(char * ptr, long newSize) {
    realloc(a, 10000*sizeof(char));
    if ( tmp_a == NULL ) // realloc has failed
    {
     // error handling
     printf("The re-allocation of array a has failed");
     free(a);
     exit(-2);
    }
    else //realloc was successful
    {
     a = tmp_a;
    }
   
  }
*/
