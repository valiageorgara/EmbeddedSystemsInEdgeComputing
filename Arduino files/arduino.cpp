#include <Keypad.h>

const int ROW_NUM = 4; //four rows
const int COLUMN_NUM = 4; //four columns

char keys[ROW_NUM][COLUMN_NUM] = {
  {'1','2','3', 'A'},
  {'4','5','6', 'B'},
  {'7','8','9', 'C'},
  {'*','0','#', 'D'}
};

byte pin_rows[ROW_NUM] = {9, 8, 7, 6}; //connect to the row pinouts of the keypad
byte pin_column[COLUMN_NUM] = {5, 4, 3}; //connect to the column pinouts of the keypad

Keypad keypad = Keypad( makeKeymap(keys), pin_rows, pin_column, ROW_NUM, COLUMN_NUM );

int motionPin = 2;
int soundPin = 10;
int indicatorPin = 12;
int reedPin = 11;

bool arm = 0;
char previous = '0';

void setup(){
  pinMode(motionPin,INPUT);
  pinMode(reedPin,INPUT);
  
  pinMode(soundPin,OUTPUT);
  pinMode(indicatorPin,OUTPUT);
  
  Serial.begin(9600);
}

void loop(){
  char key = keypad.getKey();
  Serial.println("======================");
  Serial.println(key);
  Serial.println(previous);
  Serial.println(arm);
  Serial.println("======================");
 
  if (key == '1' && previous == '3'){
    arm = 1;
    previous = '0';
  } else if (key == '3'){
    previous = '3';
  } else if (keypad.getState() == PRESSED){
    previous = '0';
  }
  
  if (arm == 1 && (digitalRead(motionPin) == HIGH || digitalRead(reedPin) == HIGH)){
    digitalWrite(soundPin,HIGH);
    Serial.println("ALARM");
  }
  if (key == '4'){
    digitalWrite(soundPin,LOW);
    Serial.println("DEACTIVATED");
    arm = 0;
  }
  if (arm == 1) {
    digitalWrite(indicatorPin,HIGH);
  } else {
    digitalWrite(indicatorPin,LOW);
  }
}