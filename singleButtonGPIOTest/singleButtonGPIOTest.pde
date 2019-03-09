// Button event processing example

import processing.io.*;

// Our button is connected to GPIO 4

int buttonPin = 4;

void setup() {
  // INPUT_PULLUP enables builtin pull up resistor
  // left alone the pin will read as high
  // connected to ground it will read as low
  GPIO.pinMode(buttonPin, GPIO.INPUT_PULLUP);
}

void draw() {
  // sense the input pin
  if (GPIO.digitalRead(buttonPin) == GPIO.LOW) {
    fill(0,255,0);
  } else {
    fill(204,0,0);
  }
  
  stroke(255);
  ellipse(width/2, height/2, width*0.75, height*0.75);
}
