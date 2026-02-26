/// @description  Spawn Notes
note = irandom(4);
if (note == 0) { // Green
    instance_create_depth(objGreenBridge.x, objTrack.y, -1, objGreenNote);
} else if (note == 1) { // Red
    instance_create_depth(objRedBridge.x, objTrack.y, -1, objRedNote);
} else if (note == 2) { // Yellow
    instance_create_depth(objBridge.x, objTrack.y, -1, objYellowNote);
} else if (note == 3) { // Blue
    instance_create_depth(objBlueBridge.x, objTrack.y, -1, objBlueNote);
} else if (note == 4) { // Orange
    instance_create_depth(objOrangeBridge.x, objTrack.y, -1, objOrangeNote);
}

alarm[0] = random_range(0.05, .2) * room_speed;