int pirPin = 7;
int ledPin = 13;
int buzzerPin = 8;
int count = 0;

void setup() {
  pinMode(pirPin, INPUT);
  pinMode(ledPin, OUTPUT);
  pinMode(buzzerPin, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  if (digitalRead(pirPin) == HIGH) {
    count++;                     
    digitalWrite(ledPin, HIGH);  
    Serial.print("People entered: ");
    Serial.println(count);

    
    if (count == 20) {
      digitalWrite(buzzerPin, HIGH);  
      delay(1000);                     
      digitalWrite(buzzerPin, LOW);   
    }

    delay(500);                       
    digitalWrite(ledPin, LOW);

    
    while(digitalRead(pirPin) == HIGH) {
      delay(50);
    }
  }
}