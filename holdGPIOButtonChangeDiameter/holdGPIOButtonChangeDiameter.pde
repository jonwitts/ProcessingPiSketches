import processing.io.*;

int buttonPin = 4;           // pin button is connected to
int circleDiameter = 200;    // original diametr of circle
float updatedCircleDiameter; // holds growing / shrinking diameter
int circleGrowthDelta = 50;  // max growth increase
float t = 0.0;               // Counter for oscillator

void setup() {
  size(400, 400);
  GPIO.pinMode(buttonPin, GPIO.INPUT_PULLUP);
}

void draw() {
  background(100);
  
  // increase the counter when the button is pressed
  if (GPIO.digitalRead(buttonPin) == GPIO.LOW) {
    t += 0.06;
  }
  
  fill(180);
  stroke(255);
  
  updatedCircleDiameter = circleDiameter + circleGrowthDelta * (sin(t));
  ellipse(width/2, height/2, updatedCircleDiameter, updatedCircleDiameter);
}
