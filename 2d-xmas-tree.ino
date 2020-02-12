/* 
 2D XMAS Tree Code
 charlieplexing christmas decoration
 5 Pins with 20 LED´s

 ATtiny25, 1MHZ Internal Clock, no BOD


 Hosted on Github: 
 
 https://github.com/designer2k2/2d-xmas-tree

 Made by:
 
 https://www.designer2k2.at

  MIT License
  
  Copyright (c) [2018] [Stephan Martin]
  
  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:
  
  The above copyright notice and this permission notice shall be included in all
  copies or substantial portions of the Software.
  
  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  SOFTWARE.
*/

#include <avr/pgmspace.h>

//Enter the light pattern here:
//use the online generator: https://designer2k2.github.io/2d-xmas-tree/
//dont forget to update the number of rows if changed

static const bool state_table[14][21] PROGMEM = {
                 {1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                 {0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                 {0,0,0,0,0,0,1,0,1,0,1,1,0,0,0,0,0,0,0,0},
                 {0,0,0,0,0,0,0,1,0,1,0,0,1,0,0,0,1,0,0,0},
                 {0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,1,1,1},
                 {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0},
                 {0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,1,1,0,0},
                 {1,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0},
                 {0,0,0,0,0,1,1,1,0,0,0,0,0,1,0,0,0,0,0,0},
                 {0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0},
                 {0,1,0,0,1,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0},
                 {0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,1,1,0,0},
                 {0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1},
                 {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0}
};
#define NumRows 14  //default is 14 (and about the space limit)

//the delay in ms between the patterns:
#define pattern_delay 500

//intro time (how long the random change happens) in ms:
#define introtime 10000

//time a led is on in us:
//increase this to have the leds "flicker"
#define ondelay 1000


//-------------------------------------------------------------------------------------
//below is the code to make this all happen, modify to make even fancier effects as you wish!

//This holds the pin configuration to make the 20 led charlieplexing,
//only 1 in PROGMEM, as the FLASH is full, but both are too large for RAM.
int pinvcc[] = {0,1,1,2,2,3,3,4,0,2,1,3,2,4,0,3,1,4,0,4};
const PROGMEM int pingnd[] = {1,0,2,1,3,2,4,3,2,0,3,1,4,2,3,0,4,1,4,0};

//placeholder for all current leds:
bool ledstate[] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}; 

unsigned long lasttime, lastintrotime;

int iState;

void setup() {
  //Need to define the Pins as input (defaults)
  tristate();

  // disable ADC (power saving):
  ADCSRA = 0;  

  //init the time with 0
  lasttime = 0;
  lastintrotime = introtime;

  //start with the first pattern
  iState = 0;

}

void loop(){
  // put your main code here, to run repeatedly:

  // every 100ms change a random led to a random state
  if(millis()<lastintrotime){
    if(millis()>(lasttime+10)){
      int ledtoset = random(20);
      bool ledbool = random(2);
      ledstate[ledtoset] = ledbool;
      lasttime = millis();
    }
  }else{
  //loop trough the states in state_table  

    if(millis()>(lasttime+pattern_delay)){
      for (int i=0; i<20; i++) {
        int state = pgm_read_word(&state_table[iState][i]);

        //PROGMEM with bool gives sometimes strange results, this fixes it:
        if (state==256){
          state = 0;
        }
        
        ledstate[i] = state;
      }
      iState = iState + 1;
      if(iState>=NumRows){
        iState = 0;
        lastintrotime = millis() + introtime;
      }
      lasttime = millis();
    }
  }

  showleds(); 
  
}

//-------------------------------------------------------------------------------------

void showleds(){
  // this cycles trough all the leds in the array and show them.
  
  for (int i=0; i<20; i++) {
   bool state = ledstate[i];
   showled(i,state);
  }
  
}

void showled(int led, bool state){
  //this outputs the led state

  if(state==true){
    //Lookup the pin for high and low:
    int pvcc = pinvcc[led];
    int pgnd = pgm_read_word(&pingnd[led]);

    //set the pinmode for it:
    pinMode(pvcc,OUTPUT);
    pinMode(pgnd,OUTPUT);

    //write the status:
    digitalWrite(pvcc,HIGH);
    digitalWrite(pgnd,LOW);

    //wait a short time to let the LED shine
    delayMicroseconds(ondelay);
    
    //ensure its all turned off properly for the next state
    tristate();
  }
 
}

void tristate(){
  //This tristates all pins
  for (int i=0; i<5; i++) {
   pinMode(i,INPUT);   //Input state
   digitalWrite(i,LOW);//ensure pullups are off.
  }
}
