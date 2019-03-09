import processing.io.*;

void setup() {
  size(400, 400);
  
  // set the 5 pins as inputs with pullup on
  GPIO.pinMode(4, GPIO.INPUT_PULLUP);
  GPIO.pinMode(17, GPIO.INPUT_PULLUP);
  GPIO.pinMode(27, GPIO.INPUT_PULLUP);
  GPIO.pinMode(22, GPIO.INPUT_PULLUP);
  GPIO.pinMode(5, GPIO.INPUT_PULLUP);
}

void draw() {
  if (GPIO.digitalRead(4) == GPIO.LOW) {
    println("Pin 4 is currently active");
  }
  
  if (GPIO.digitalRead(17) == GPIO.LOW) {
    println("Pin 17 is currently active");
  }
  
  if (GPIO.digitalRead(27) == GPIO.LOW) {
    println("Pin 27 is currently active");
  }
  
  if (GPIO.digitalRead(22) == GPIO.LOW) {
    println("Pin 22 is currently active");
  }
  
  if (GPIO.digitalRead(5) == GPIO.LOW) {
    println("Pin 5 is currently active");
  }
}
