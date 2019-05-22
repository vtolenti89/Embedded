#include<SoftwareSerial.h>
#include "esp8266.h"
#include "helper.h"
#define WIFI_RX PD2
#define WIFI_TX PD3

const char url [] = "jsonplaceholder.typicode.com";
const char endpoint [] = "/posts/42";
//const char url [] = "2886795456-3000-cykoria03.environments.katacoda.com";
//const char endpoint [] = "/data";
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
    //esp8266.printPipe();
    
    response = esp8266.watcher();
    if(response.length() > 0) {
      Serial.print("<<<<<RESPONSE:");
      Serial.println(response);
      Serial.println("++++++");  
    }
        esp8266.getRequest(url, endpoint);
   }

   if(helper.getTimerFlag(4)){ 
    PORTD^=(1 << redLed);

   }

  helper.updateTimer();
}
