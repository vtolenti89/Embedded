#include <Arduino.h>
#include<SoftwareSerial.h>
#include "wifi.h"
 
void Wifi::init() {
    //ESP8266.begin(BAUD_RATE);
    Serial.println("WIFI INIT");
    
    sendCommand("AT");
    
    // AT+CWMODE (1: Station mode (client), 2 = AP mode (host), 3 : AP + Station mode)
    sendCommand("AT+CWMODE=1");
    checkFirmware();
    connect();
};

void Wifi::setBaudRate() {
  //set baud rate
  sendCommand("AT+UART_DEF=9600,8,1,0,0");
 };
 
void Wifi::checkFirmware () {
    //AT+GMR check firmware
    sendCommand("AT+GMR");
  };

bool Wifi::connect() {
  Serial.println("...trying to connect to WIFI");
  // AT+CWJAP connect to wifi
  sendCommand("AT+CWJAP=\"" + String(WIFI_SSID) + "\",\"" + String(WIFI_PASS) + "\"");

  // AT+CIFSR check ip of wifi module
  sendCommand("AT+CIFSR");

  connectionStatus ();
};

bool Wifi::disconnect() {
  // AT+CWQAP disconnect from current WIFI
  sendCommand("AT+CWQAP");  
};

String Wifi::connectionStatus () {
  // AT+CIPSTATUS status from the connection
  sendCommand("AT+CIPSTATUS");
};

bool Wifi::sendCommand(String command) {
  sendTimeout = false;
  Serial.println("SEND:" + command);
  ESP8266.println(command);
  while (true && !sendTimeout) {
    response = getResponse();
    
    response.trim();
    if (response.length() > 0) {
      Serial.println("RES:" + response);
      //intermediate response
      if (response == "WIFI CONNECTED") {wifiIsConnected = true;}
      if (response == "WIFI DISCONNECT") {wifiIsConnected = false;}    
      
      if (response == "OK" || response == "SEND OK" || response == "ALREADY CONNECTED")
        return true;
      if (response == "ERROR" || response == "FAIL" || response == "SEND FAIL")
        return false;
    }
  }
 }

void Wifi::printResponse() {
     
};


String Wifi::getResponse() {
    return ESP8266.readStringUntil('\n');
};

void Wifi::htmlRequest(String url, String endpoint, String reqType, String data = "") {
  if (!wifiIsConnected){
      connect();
    }
  // AT+CIPMUX (0: single connection, 1: multiple connection)
  sendCommand("AT+CIPMUX=1");

  // AT+CWMODE (1: Station mode (client), 2 = AP mode (host), 3 : AP + Station mode)
  sendCommand("AT+CWMODE=1");

  // AT+CIPSTART establishes TCP connection
  //sendCommand("AT+CIPSTART=4,\"TCP\",\"" + url + "\",80");
  
  sendCommand("AT+CIPSTART=4,\"TCP\",\"jsonplaceholder.typicode.com\",80");
  //sendCommand("AT+CIPSTART=4,\"TCP\",\"mocky.io\",80");

  String cmd = "";
  if(reqType == "GET") {
    cmd = "GET " + endpoint +  " HTTP/1.1 \r\nHost: " + url + "\r\n\r\n";     
  } else if (reqType == "POST") {
    //TODO
    cmd = "POST " + endpoint +  " HTTP/1.1 \r\nHost: " + url + "\r\n\r\n";        
    }

  //test
  cmd = "GET /posts/42 HTTP/1.1\r\nHost: jsonplaceholder.typicode.com\r\n\r\n";     
  //cmd = "GET /v2/5cdc13222d00005211f5a574 HTTP/1.1\r\nHost: mocky.io\r\n\r\n";     
  // AT+CIPSTART set the command size
  sendCommand("AT+CIPSEND=4," + String(cmd.length() + 2));

  // Send the command
  sendCommand(cmd);
 };

 String Wifi::getRequest(String url, String endpoint){
    Serial.println("URL:" + url);
    Serial.println("ENDPOINT:" + endpoint);
    htmlRequest(url, endpoint, "GET");
 };

 String Wifi::postRequest(String url, String endpoint, String data) {
  
 };
