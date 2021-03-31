# -*- coding: utf-8 -*-
from pydantic import BaseModel
from typing import List


class LEG_POSITION():
    LEFT_FRONT = 10
    LEFT_CENTER = 11
    LEFT_REAR = 12
    RIGHT_FRONT = 20
    RIGHT_CENTER = 21
    RIGHT_REAR = 22


class LegJoint(BaseModel):
    id: int
    angle: int

    @classmethod
    def to_json(cls, id: int, angle: int) -> dict:
        return {
            'id': id,
            'angle': 60
        }


class Leg(BaseModel):
    position: int  # 10: 左前, 11:左中央, 12:左後, 20: 右前, 21:右中央, 22:右後
    joints: List[LegJoint] = None

    @classmethod
    def to_json(cls, position: int, legs_json: list) -> dict:
        return {
            'position': position,
            'joints': legs_json
        }
