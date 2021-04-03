# -*- coding: utf-8 -*-
from typing import List, Optional
from fastapi.routing import APIRouter
from app.schemas.leg import LegJoint, Leg, LEG_POSITION
from control.leg import leg_controller
from data import leg_manager
from data.leg import LegStatus, LegJointStatus

router = APIRouter(prefix='/legs')


@router.get("/", response_model=List[Leg])
async def get_all_leg_status():
    return leg_manager.to_json()


@router.get("/{position}", response_model=Leg)
async def get_leg_status(position: int, joint_id: Optional[int] = -1):
    return leg_manager.legs.get(position).to_json()


@ router.post("/", response_model=List[Leg])
async def control_legs(legs: List[Leg]):
    move_datas = []
    for leg in legs:
        leg_status = LegStatus(leg.position)
        leg_status.joints = []

        for joint in leg.joints:
            move_datas.append((leg.position, joint.id, joint.angle))
            joint_status = LegJointStatus(joint.id)
            joint_status.angle = joint.angle
            leg_status.joints.append(joint_status)

        leg_manager.update_status(leg_status)
    if len(move_datas):
        leg_controller.move_legs(move_datas)

    return await get_all_leg_status()
