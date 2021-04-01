# -*- coding: utf-8 -*-
from fastapi import FastAPI

from app.routers import legs as route_legs

app = FastAPI()
app.include_router(route_legs.router)


@app.get("/", include_in_schema=False)
async def read_root():
    return {"Hello": "World"}


@app.get("/health")
async def check_health():
    return {'result': 'ok'}
