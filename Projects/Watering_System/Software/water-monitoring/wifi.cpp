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
    connectionStatus();
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
};

String Wifi::getReq(String url, String endpoint) {
  
};

String Wifi::postReq(String url, String endpoint, String data) {
};

bool Wifi::sendCommand(String command){
  //printing command in the debug window
  delay(100);
  Serial.println(" ");
  Serial.print("=> ");
  Serial.print(command);
  countSendAttempts = 0;
  successfulResponse = false;
  response = "";
  
  while(countSendAttempts < SEND_ATTEMPTS) {
    countSendAttempts++;
    Serial.print(".");
    ESP8266.println(command);
    delay(1000);
    response = getResponse();
    Serial.println(" RES1:" + response);
    if(response.indexOf("OK") >= 0){
      Serial.print("OK");
      Serial.print(response);
      Serial.println(" ");
      successfulResponse = true;
      break;  
    };
  }
  if(!successfulResponse) {
    Serial.print("Fail");  
  }
};

void Wifi::printResponse() {
  delay(50);
  Serial.print("RES2:");
  Serial.print(getResponse());
  Serial.print("\n");
};

String Wifi::getResponse() {
  delay(50);
  //if (ESP8266.available()){
     return ESP8266.readStringUntil('\n');
  //}
};

void Wifi::htmlRequest(String url, String endpoint, String reqType, String data = "") {

  // AT+CIPMUX (0: single connection, 1: multiple connection)
  sendCommand("AT+CIPMUX=1");

  // AT+CWMODE (1: Station mode (client), 2 = AP mode (host), 3 : AP + Station mode)
  sendCommand("AT+CWMODE=1");

  // AT+CIPSTART establishes TCP connection
  sendCommand("AT+CIPSTART=4,\"TCP\",\"" + url + "\",80");

  String cmd = "";
  if(reqType == "GET") {
    cmd = "GET " + endpoint +  " HTTP/1.1 \r\nHost: " + url + "\r\n\r\n";     
  } else if (reqType == "POST") {
    //TODO
    cmd = "POST " + endpoint +  " HTTP/1.1 \r\nHost: " + url + "\r\n\r\n";        
    }
  // AT+CIPSTART set the command size
  sendCommand("AT+CIPSEND=4," + String(cmd.length() + 4));

  // Send the command
  sendCommand(cmd);
 };

 String Wifi::getRequest(String url, String endpoint){
    Serial.println("ENDPOINT:" + endpoint);
    htmlRequest(url, endpoint, "GET");
 };

 String Wifi::postRequest(String url, String endpoint, String data) {
  
 };
