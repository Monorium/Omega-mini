# -*- coding: utf-8 -*-
import configparser
import json
import os

from logging import getLogger
from logging import config as logging_config
import yaml


LOGGING_CONFIG_FILE_NAME = os.path.dirname(os.path.relpath(__file__)) + '/logging.yaml'
APP_CONFIG_FILE_NAME = os.path.dirname(os.path.relpath(__file__)) + '/leg_controller.ini'

logging_config.dictConfig(yaml.safe_load(open(LOGGING_CONFIG_FILE_NAME).read()))
logger = getLogger('omega.controller')


def is_debug_mode() -> bool:
    return int(os.getenv('OMEGA_DEBUG_MODE', 0))


class LegControllerConfig():
    def __init__(self):
        config = configparser.ConfigParser()
        config.read(APP_CONFIG_FILE_NAME, encoding='utf-8')

        self.I2C_ADDR = [
            int(config['Controller1']['I2CAddr'], 16),
            int(config['Controller2']['I2CAddr'], 16),
        ]

        self.LEG_IDS = [
            json.loads(config['Controller1']['LegIds']),
            json.loads(config['Controller2']['LegIds']),
        ]


LEG_CONTROLLER = LegControllerConfig()
