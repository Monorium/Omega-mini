# -*- coding: utf-8 -*-
import configparser
import json
import os

IS_DEBUG_MODE = False


class LegControllerConfig():
    __CONFIG_FILE_NAME = os.path.dirname(os.path.relpath(__file__)) + '/leg_controller.ini'

    def __init__(self):
        config = configparser.ConfigParser()
        config.read(LegControllerConfig.__CONFIG_FILE_NAME, encoding='utf-8')

        self.I2C_ADDR = [
            int(config['Controller1']['I2CAddr'], 16),
            int(config['Controller2']['I2CAddr'], 16),
        ]

        self.LEG_IDS = [
            json.loads(config['Controller1']['LegIds']),
            json.loads(config['Controller2']['LegIds']),
        ]


LEG_CONTROLLER = LegControllerConfig()
