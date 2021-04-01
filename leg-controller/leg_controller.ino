#include <Wire.h>
#include <Servo.h>

const int I2C_ADDR = 0x8;
const int JOINT_COUNT = 9;
const int JOINT_GPIO_LIST[] = {0, 1, 2, 3, 6, 7, 8, 9, 10};

Servo joint1, joint2, joint3, joint4, joint5, joint6, joint7, joint8, joint9;
Servo joints[] = {joint1, joint2, joint3, joint4, joint5, joint6, joint7, joint8, joint9};

void setup()
{
  SerialUSB.begin(115200);
  SerialUSB.println(F("setup start."));

  for (int i = 0; i < JOINT_COUNT; i++)
  {
    joints[i].attach(JOINT_GPIO_LIST[i]);
  }

  Wire.begin(I2C_ADDR);
  Wire.onReceive(controlJoint);
  Wire.onRequest(getJointStatus);

  SerialUSB.println(F("setup end."));
}

void controlJoint(int bitstream)
{
  int start_sign = Wire.read();
  int length = Wire.read();
  char buf[64];
  sprintf(buf, "controlJoint start. length=%d", length);
  SerialUSB.println(buf);

  boolean hasNumber = false;
  int jointId = -1;
  int angle = -1;
  while (Wire.available())
  {
    jointId = Wire.read();
    angle = Wire.read();
    if (jointId < 0 || jointId >= 9 || angle < 0)
    {
      char buf[64];
      sprintf(buf, "receiv unknown message. id=%d, angle=%d", jointId, angle);
      SerialUSB.println(buf);
      continue;
    }
    if (angle > 180)
      angle = 180;

    char buf[64];
    sprintf(buf, "receiv message. id=%d, angle=%d", jointId, angle);
    SerialUSB.println(buf);
    SerialUSB.println(jointId);
    SerialUSB.println(angle);

    joints[jointId].write(angle);
  }

  SerialUSB.println(F("controlJoint end."));
}

void getJointStatus()
{
}

void loop()
{
  delay(1000);
}
