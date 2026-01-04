/// @description  Spawn Notes
note = irandom(4);
if (note == 0) { // Green
    instance_create(objGreenBridge.x, objTrack.y, objGreenNote);
} else if (note == 1) { // Red
    instance_create(objRedBridge.x, objTrack.y, objRedNote);
} else if (note == 2) { // Yellow
    instance_create(objYellowBridge.x, objTrack.y, objYellowNote);
} else if (note == 3) { // Blue
    instance_create(objBlueBridge.x, objTrack.y, objBlueNote);
} else if (note == 4) { // Orange
    instance_create(objOrangeBridge.x, objTrack.y, objOrangeNote);
}

alarm[0] = random_range(0.05, .2) * room_speed;