# -*- coding: utf-8 -*-
import config
from config import logger
from smbus2 import SMBus


class LegController():
    def __init__(self):
        pass

    def move_joints(self, angles: list):
        pass


class LegController_I2C(LegController):
    def __init__(self, addr):
        logger.info('I2C address={}'.format(addr))
        super().__init__()
        self.__wire = SMBus(1)
        self.__addr = addr

    def move_joints(self, angles: list):
        logger.debug('angles={}'.format(angles))
        controls = []
        for (joint_id, angle) in angles:
            controls.append(joint_id)
            controls.append(angle)
        logger.debug('controls={}'.format(controls))
        self.__wire.write_block_data(self.__addr, 0, controls)


class LegController_dummy(LegController_I2C):
    def __init__(self, addr):
        logger.info('I2C address={}'.format(addr))
        self.__addr = addr

    def move_joints(self, angles: list):
        logger.debug('angles={}'.format(angles))
        controls = []
        for (joint_id, angle) in angles:
            logger.debug('I2C address={}, joint id={}, angle={}'.format(self.__addr, joint_id, angle))


class LegControllerManager():
    def __init__(self):
        if config.is_debug_mode():
            self.__leg1 = LegController_dummy(config.LEG_CONTROLLER.I2C_ADDR[0])
            self.__leg2 = LegController_dummy(config.LEG_CONTROLLER.I2C_ADDR[1])
        else:
            self.__leg1 = LegController_I2C(config.LEG_CONTROLLER.I2C_ADDR[0])
            self.__leg2 = LegController_I2C(config.LEG_CONTROLLER.I2C_ADDR[1])

        self.__leg_ids1 = config.LEG_CONTROLLER.LEG_IDS[0]
        self.__leg_ids2 = config.LEG_CONTROLLER.LEG_IDS[1]

    def move_legs(self, legs: list):
        logger.debug('legs={}'.format(legs))
        angles1 = []
        angles2 = []
        for (leg_id, joint_id, angle) in legs:
            if leg_id in self.__leg_ids1:
                angles1.append((
                    3 * self.__leg_ids1.index(leg_id) + joint_id,
                    angle
                ))

            if leg_id in self.__leg_ids2:
                angles2.append((
                    3 * self.__leg_ids2.index(leg_id) + joint_id,
                    angle
                ))

        if len(angles1):
            self.__leg1.move_joints(angles1)
        if len(angles2):
            self.__leg2.move_joints(angles2)


leg_controller = LegControllerManager()
