// Sweep
// by BARRAGAN <http://barraganstudio.com> 
// This example code is in the public domain.


#include <Servo.h> 
 
Servo myservo;  // create servo object to control a servo 
                // a maximum of eight servo objects can be created 
 
int pos = 90;    // variable to store the servo position 
 
void setup() 
{ 
  myservo.attach(9);  // attaches the servo on pin 9 to the servo object 
} 
 
 
void loop()
{ 
for(pos = 80; pos < 100; pos += 1)  // goes from 0 degrees to 180 degrees 
 {                                  // in steps of 1 degree 
   myservo.write(pos);              // tell servo to go to position in variable 'pos' 
   delay(2);                // waits 15ms for the servo to reach the position 
  } 
  for(pos = 100; pos>80; pos-=1)     // goes from 180 degrees to 0 degrees 
  {                                
    myservo.write(pos);              // tell servo to go to position in variable 'pos' 
    delay(2);                      // waits 15ms for the servo to reach the position 
  } 
} 
