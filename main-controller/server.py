# -*- coding: utf-8 -*-
import uvicorn
from app.main import app
from logging import getLogger
from logging import config as logging_config
import yaml

if __name__ == "__main__":
    logging_config.dictConfig(yaml.safe_load(open('config/logging.yaml').read()))
    logger = getLogger(__name__)
    logger.info('logger initialized')

    uvicorn.run("server:app", host="0.0.0.0", port=8080, reload=True)
