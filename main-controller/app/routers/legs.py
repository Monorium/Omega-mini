# -*- coding: utf-8 -*-
from typing import List, Optional
from fastapi.routing import APIRouter
from app.schemas.leg import LegJoint, Leg, LEG_POSITION
from control.leg import controller as leg_controller

router = APIRouter(prefix='/legs')


@router.get("/", response_model=List[Leg])
async def get_all_leg_status():
    return [
        await get_leg_status(LEG_POSITION.LEFT_FRONT),
        await get_leg_status(LEG_POSITION.LEFT_CENTER),
        await get_leg_status(LEG_POSITION.LEFT_REAR),
        await get_leg_status(LEG_POSITION.RIGHT_FRONT),
        await get_leg_status(LEG_POSITION.RIGHT_CENTER),
        await get_leg_status(LEG_POSITION.RIGHT_REAR),
    ]


@router.get("/{position}", response_model=Leg)
async def get_leg_status(position: int, joint_id: Optional[int] = -1):
    leg = None
    if joint_id == 0:
        leg = Leg.to_json(position, [LegJoint.to_json(joint_id, 60)])
    elif joint_id == 1:
        leg = Leg.to_json(position, [LegJoint.to_json(joint_id, 90)])
    elif joint_id == 2:
        leg = Leg.to_json(position, [LegJoint.to_json(joint_id, 10)])
    else:
        leg = Leg.to_json(
            position,
            [
                LegJoint.to_json(0, 60),
                LegJoint.to_json(1, 90),
                LegJoint.to_json(2, 10),
            ]
        )

    return leg


@ router.post("/", response_model=List[Leg])
async def control_legs(legs: List[Leg]):
    for leg in legs:
        for joint in leg.joints:
            leg_controller.move_leg(leg.position, joint.id, joint.angle)
    return get_all_leg_status()
