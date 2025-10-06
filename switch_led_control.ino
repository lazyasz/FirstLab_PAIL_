void setup() {
  pinMode(7, INPUT_PULLUP);
  pinMode(13, OUTPUT);
  pinMode(5, OUTPUT);
}

void loop() {
  int switchState = digitalRead(7);

  if (switchState == 0) {
    digitalWrite(13, HIGH);
    digitalWrite(5, HIGH);
  } else {
    digitalWrite(13, LOW);
    digitalWrite(5, LOW);
  }
}
