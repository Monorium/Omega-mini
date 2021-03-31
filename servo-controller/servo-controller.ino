#include <Wire.h>
#include <Servo.h>

const int I2C_ADDR = 0x9;
const int SERVO_PINS[] = {0, 1, 2, 3, 6, 7, 8, 9, 10};

Servo servo1;
Servo servo2;
Servo servo3;
Servo servo4;
Servo servo5;
Servo servo6;
Servo servo7;
Servo servo8;
Servo servo9;
Servo servos[] = {servo1, servo2, servo3, servo4, servo5, servo6, servo7, servo8, servo9};

int val = HIGH;

void setup()
{
  SerialUSB.begin(115200);

  Wire.begin(I2C_ADDR);
  Wire.onReceive(controlServo);
  Wire.onRequest(getServoStatus);

  servo1.attach(SERVO_PINS[0]);
  servo2.attach(SERVO_PINS[1]);
  servo3.attach(SERVO_PINS[2]);
  servo4.attach(SERVO_PINS[3]);
  servo5.attach(SERVO_PINS[4]);
  servo6.attach(SERVO_PINS[5]);
  servo7.attach(SERVO_PINS[6]);
  servo8.attach(SERVO_PINS[7]);
  servo9.attach(SERVO_PINS[8]);
}

//This function switches LEDs on and off when the Raspberry Pi sends a message
void controlServo(int bitstream)
{
  int start_sign = Wire.read();
  int length = Wire.read();
  SerialUSB.print("controlServo start. length=");
  SerialUSB.println(length);

  boolean hasNumber = false;
  int servoId = -1;
  int angle = -1;
  while (Wire.available())
  {
    servoId = Wire.read();
    angle = Wire.read();
    if (servoId < 0 || servoId >= 9 || angle < 0)
    {
      SerialUSB.print("receiv unknown message. id=");
      SerialUSB.print(servoId);
      SerialUSB.print(", angle=");
      SerialUSB.println(angle);
      continue;
    }
    if (angle > 180)
      angle = 180;

    SerialUSB.print("receiv message. id=");
    SerialUSB.print(servoId);
    SerialUSB.print(", angle=");
    SerialUSB.println(angle);

    servos[servoId].write(angle);
  }
}

void getServoStatus()
{
}

void loop()
{
  if (val == HIGH)
  {
    val = LOW;
  }
  else
  {
    val = HIGH;
  }
  digitalWrite(LED_BUILTIN, val);
  delay(1000);
}
