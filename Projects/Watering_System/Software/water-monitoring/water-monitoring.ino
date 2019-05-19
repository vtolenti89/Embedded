#include<SoftwareSerial.h>
#include "esp8266.h"
#include "helper.h"
#define WIFI_RX PD2
#define WIFI_TX PD3

const char url [] = "jsonplaceholder.typicode.com";
const char endpoint [] = "/posts/42";
const int yellowLed = PD6;
const int redLed = PD7;
const int motorPWM = PB1;
const int lWaterLevel = PC0;
const int sWaterLevel = PC1;
String response = "";

ESP8266 esp8266(WIFI_RX, WIFI_TX);
Helper helper;

void setup() {
  //Setting up pin inputs and outputs
  DDRD=0x00;
  DDRB=0x00;
  DDRC=0x00;
  DDRD|=(1 << yellowLed) | (1 << redLed);
  DDRB|=(1 << motorPWM);
  DDRC&=~((1 << lWaterLevel) | (1 << sWaterLevel));

  // Open serial communications and wait for port to open:
  Serial.begin(9600);
  while (!Serial) {
    ; // wait for serial port to connect. Needed for native USB port only
  }
  
  Serial.println("Serial communication started...");
  // set the data rate for the SoftwareSerial port
  esp8266.init();
  
}

void loop() {
  // put your main code here, to run repeatedly:
  
  if(helper.getTimerFlag(2)){
    
    PORTD^=(1 << yellowLed);
    //esp8266.getRequest(url , endpoint);
  }

   if(helper.getTimerFlag(3)){
    //esp8266.printPipe();
    response = esp8266.watcher();
    if(response) {
      Serial.print("RESPONSE:");
      Serial.println(response);
      Serial.println("++++++");  
    }
   }

   if(helper.getTimerFlag(4)){ 
    PORTD^=(1 << redLed);
    esp8266.getRequest(url, endpoint);
   }

  helper.updateTimer();
}

/*
void sendCommand(String command, int maxTime, char readReplay[]) {
  //printing command in the debug window
  Serial.print(countTrueCommand);
  Serial.print(". at command => ");
  Serial.print(command);
  Serial.print(" ");
  
  while(countTimeCommand < (maxTime*1))
  {
    ESP8266.println(command);//at+cipsend
    if(ESP8266.find(readReplay)){
      found = true;
      break;
    }
    countTimeCommand++;
  }
  
  if(found == true){
    Serial.println("OK");
    if(DEBUG) {
      Serial.println(ESP8266.readStringUntil('\n'));
     }
    countTrueCommand++;
    countTimeCommand = 0;
  }
  
  if(found == false)
  {
    Serial.println("Fail");
    countTrueCommand = 0;
    countTimeCommand = 0;
  }
  found = false;
 }


 void htmlRequest(String url, String endpoint, String reqType) {
  // AT+CIPMUX (0: single connection, 1: multiple connection)
  sendCommand("AT+CIPMUX=1",5,"OK");

  // AT+CWMODE (1: Station mode (client), 2 = AP mode (host), 3 : AP + Station mode)
  sendCommand("AT+CWMODE=1",5,"OK");

  // AT+CIPSTART establishes TCP connection
  sendCommand("AT+CIPSTART=4,\"TCP\",\"" + url + "\",80",5,"OK");

  String cmd = "";
  if(reqType == "GET") {
    cmd = "GET " + endpoint +  " HTTP/1.1 \r\nHost: " + url + "\r\n\r\n";     
  } else if (reqType == "POST") {
    cmd = "GET " + endpoint +  " HTTP/1.1 \r\nHost: " + url + "\r\n\r\n";        
    }

  // AT+CIPSTART set the command size
  sendCommand("AT+CIPSEND=4," + String(cmd.length() + 4),5,"OK");

    // Send the command
  sendCommand(cmd,5,"OK");
  
 }

 void connectWifi(String ssid, String password){
  //AT+CIPSTATUS check whether it is connected
  sendCommand("AT+CIPSTATUS",5,"OK");
  
  // AT+CWJAP connect to wifi
  sendCommand("AT+CWJAP=\"" + ssid + "\",\"" + password + "\"",5,"OK");

  // AT+CIFSR check ip of wifi module
  sendCommand("AT+CIFSR",5,"OK");
 }


void readResponse(){
  delay(500);
  if (Serial.available() > 0)
  {
    String command = Serial.readStringUntil('\n');
    Serial.println("Command Sent: " + command);
    Serial.println();
    ESP8266.println(command);
  }
 
  int responseCounter = 0;
  if (ESP8266.available() > 0)
  {
    Serial.println("Waiting for wifi message");
    while (ESP8266.available() > 0)
    {
      if (responseCounter == 0)
      {
        Serial.println("Response Received:");
      }
      //char c = ESP8266.read();
      String c = ESP8266.readStringUntil('\n');
      Serial.println(c);    
      responseCounter++;
    }
    Serial.println();
    Serial.println("============");
    Serial.println();
 }
  
  }
 */
