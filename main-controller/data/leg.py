# -*- coding: utf-8 -*-
#import config


import json


class LegJointStatus():
    def __init__(self, id: int):
        self.id = id
        self.angle = 90

    def to_json(self):
        return {
            'id': self.id,
            'angle': self.angle
        }

    def __str__(self):
        return json.dumps(self.to_json())


class LegStatus():
    def __init__(self, position: int):
        self.position = position
        self.joints = [
            LegJointStatus(0),
            LegJointStatus(1),
            LegJointStatus(2),
        ]

    def to_json(self):
        return {
            'position': self.position,
            'joints': [
                self.joints[0].to_json(),
                self.joints[1].to_json(),
                self.joints[2].to_json(),
            ]
        }

    def __str__(self):
        return json.dumps(self.to_json())


class LegStatusManager():
    def __init__(self):
        self.legs = {
            10: LegStatus(10),
            11: LegStatus(11),
            12: LegStatus(12),
            20: LegStatus(20),
            21: LegStatus(21),
            22: LegStatus(22),
        }

    def update_status(self, leg: LegStatus) -> LegStatus:
        if leg.position in self.legs:
            leg_org = self.legs[leg.position]
            for joint in leg.joints:
                leg_org.joints[joint.id] = joint
            return leg_org
        return None

    def to_json(self) -> str:
        res = []
        for (pos, leg) in self.legs.items():
            res.append(leg.to_json())
        return res

    def __str__(self):
        return json.dumps(self.to_json())


if '__main__' == __name__:
    man = LegStatusManager()
    sts = LegStatus(21)
    sts.joints[1].angle = 120
    res = man.update_status(sts)
    print(res)
