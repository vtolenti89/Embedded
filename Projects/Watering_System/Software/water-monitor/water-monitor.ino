#include "helper.h"
#include "WiFiEsp.h"

// Emulate Serial1 on pins 6/7 if not present
#ifndef HAVE_HWSERIAL1
#include "SoftwareSerial.h"
SoftwareSerial Serial1(PD2, PD3); // RX, TX
#endif

char ssid[] = "UPC6E2796A";            // your network SSID (name)
char pass[] = "Jmre8szre4ez";        // your network password
int status = WL_IDLE_STATUS;     // the Wifi radio's status

//const String url = "jsonplaceholder.typicode.com";
//const String endpoint = "/posts/42";

//char server[] = "arduino.cc";
char url[] = "jsonplaceholder.typicode.com";
char endpoint [] = "/posts/42"; 
const int yellowLed = PD6;
const int redLed = PD7;
const int motorPWM = PB1;
const int lWaterLevel = PC0;
const int sWaterLevel = PC1;


Helper helper;

// Initialize the Ethernet client object
WiFiEspClient client;

void setup()
{
    //Setting up pin inputs and outputs
  DDRD=0x00;
  DDRB=0x00;
  DDRC=0x00;
  DDRD|=(1 << yellowLed) | (1 << redLed);
  DDRB|=(1 << motorPWM);
  DDRC&=~((1 << lWaterLevel) | (1 << sWaterLevel));
  
  // initialize serial for debugging
  Serial.begin(115200);
  // initialize serial for ESP module
  Serial1.begin(9600);
  // initialize ESP module
  WiFi.init(&Serial1);

  // check for the presence of the shield
  if (WiFi.status() == WL_NO_SHIELD) {
    Serial.println("WiFi shield not present");
    // don't continue
    while (true);
  }

  // attempt to connect to WiFi network
  while ( status != WL_CONNECTED) {
    Serial.print("Attempting to connect to WPA SSID: ");
    Serial.println(ssid);
    // Connect to WPA/WPA2 network
    status = WiFi.begin(ssid, pass);
  }

  // you're connected now, so print out the data
  Serial.println("You're connected to the network");
  
  printWifiStatus();

  Serial.println();
  Serial.println("Starting connection to server...");
  // if you get a connection, report back via serial
  //getReq("arduino.cc", "/asciilogo.txt");
  getReq(url, endpoint);
}

void loop()
{
  // if there are incoming bytes available
  // from the server, read them and print them
  while (client.available()) {
    String c = client.readStringUntil('\n');
    Serial.println(c);
  }

  // if the server's disconnected, stop the client
  if (!client.connected()) {
    //Serial.println();
    //Serial.println("Disconnecting from server...");
    client.stop();

    // do nothing forevermore
    //while (true);
  }

    if(helper.getTimerFlag(2)){
      PORTD^=(1 << yellowLed);
      //esp8266.getRequest(url , endpoint);
    }

   if(helper.getTimerFlag(3)){
    
   }

   if(helper.getTimerFlag(4)){ 
    PORTD^=(1 << redLed);
    getReq(url, endpoint);
   }
    helper.updateTimer();
}


void getReq (char * url, char * endpoint) {
  if (client.connect(url, 80)) {
    Serial.println("Connected to server");
    // Make a HTTP request
    client.println("GET " + String(endpoint) +" HTTP/1.1");
    client.println("Host: " + String(url));
    client.println("Connection: close");
    client.println();
  }
}


void printWifiStatus()
{
  // print the SSID of the network you're attached to
  Serial.print("SSID: ");
  Serial.println(WiFi.SSID());

  // print your WiFi shield's IP address
  IPAddress ip = WiFi.localIP();
  Serial.print("IP Address: ");
  Serial.println(ip);

  // print the received signal strength
  long rssi = WiFi.RSSI();
  Serial.print("Signal strength (RSSI):");
  Serial.print(rssi);
  Serial.println(" dBm");
}
