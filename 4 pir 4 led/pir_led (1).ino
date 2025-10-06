int pir1 = 2;
int pir2 = 3;
int pir3 = 4;
int pir4 = 5;

int led1 = 8;
int led2 = 9;
int led3 = 10;
int led4 = 11;

void setup() {
  pinMode(pir1, INPUT);
  pinMode(pir2, INPUT);
  pinMode(pir3, INPUT);
  pinMode(pir4, INPUT);

  pinMode(led1, OUTPUT);
  pinMode(led2, OUTPUT);
  pinMode(led3, OUTPUT);
  pinMode(led4, OUTPUT);
}

void loop() {
  digitalWrite(led1, digitalRead(pir1));
  digitalWrite(led2, digitalRead(pir2));
  digitalWrite(led3, digitalRead(pir3));
  digitalWrite(led4, digitalRead(pir4));

  delay(100);
}
