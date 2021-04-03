# -*- coding: utf-8 -*-
import uvicorn

import config
from app.main import app
from logging import getLogger


class TestClass():
    def __init__(self):
        config.logger.debug('debug')
        config.logger.info('info')
        config.logger.warning('warning')
        config.logger.error('error')
        config.logger.critical('critical')


if __name__ == '__main__':
    config.logger.info('start server')
    t = TestClass()
    uvicorn.run("server:app", host="0.0.0.0", port=8080, reload=True, log_config=config.LOGGING_CONFIG_FILE_NAME)
