# -*- coding: utf-8 -*-
import uvicorn

import config
from app.main import app
from logging import getLogger


if __name__ == '__main__':
    config.logger.info('start server')
    uvicorn.run("server:app", host="0.0.0.0", port=8080, reload=True, log_config=config.LOGGING_CONFIG_FILE_NAME)
