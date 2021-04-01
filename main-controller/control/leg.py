# -*- coding: utf-8 -*-
import argparse
from smbus2 import SMBus


class LegController():
    def __init__(self):
        pass

    def set_angle(self, id, angle):
        pass


class LegController_I2C(LegController):
    I2C_ARRD_1 = 0x8
    I2C_ARRD_2 = 0x9

    def __init__(self, addr):
        self.wire = SMBus(1)
        self.addr = addr

    def control(self, angle: tuple):
        self.wire.write_block_data(self.addr, 0, [angle[0], angle[1]])

    def control_list(self, angles: list):
        controls = []
        for angle in angles:
            controls.append(angle[0])
            controls.append(angle[1])
        self.wire.write_block_data(self.addr, 0, controls)


class LegControllerManager():
    def __init__(self):
        self.legs = [LegController_I2C(LegController_I2C.I2C_ARRD_1), LegController_I2C(LegController_I2C.I2C_ARRD_2)]

    def move_leg(self, leg_id, joint_id, angle):
        if leg_id == 10 or 11 or 12:
            self.legs[0].control((joint_id, angle))
        else:
            self.legs[1].control((joint_id, angle))


controller = LegControllerManager()


def get_args():
    def type_comma(x): return list(map(int, x.split(',')))
    parser = argparse.ArgumentParser(description='Servo controller')
    #parser.add_argument('id', help='0-8')
    #parser.add_argument('angles', help='0-180')
    parser.add_argument('angles', type=type_comma, help='90,90,90,90,...')
    return parser.parse_args()


if __name__ == '__main__':
    args = get_args()
    servo1 = LegController_I2C(LegController_I2C.I2C_ARRD_1)
    servo2 = LegController_I2C(LegController_I2C.I2C_ARRD_2)
    angles1, angles2 = [], []
    id = 0
    for angle in args.angles:
        if id < 9:
            angles1.append((id, angle))
        else:
            angles2.append((id - 9, angle))
        id += 1
        if id >= 18:
            break

    if len(angles1) > 0:
        servo1.control_list(angles1)
    if len(angles2) > 0:
        servo2.control_list(angles2)
