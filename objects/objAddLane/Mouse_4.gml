/// @description Add new lane in editor
// Needs to check number of lane in room for default values
// Add a new lane to the right of the last one
// Also need Set lane color, key, and speed
if (numLanes >= maxLanes) {
	exit;
}

var rightmostLane = array_last(lanes);
var rightmostHue = array_last(hueButtons);
var rightmostSpeed = array_last(speedButtons);
var rightmostKey = array_last(keyButtons);
var newLane = instance_create_depth(rightmostLane.x + objEditorLane.sprite_width * 2, rightmostLane.y, -1, objEditorLane);
var newLaneHue = instance_create_depth(rightmostLane.x + objEditorLane.sprite_width * 2, rightmostHue.y, -1, objLaneHue);
var newLaneSpeed = instance_create_depth(rightmostLane.x + objEditorLane.sprite_width * 2, rightmostSpeed.y, -1, objLaneSpeed);
var newLaneKey = instance_create_depth(rightmostLane.x + objEditorLane.sprite_width * 2, rightmostKey.y, -1, objLaneKey);
newLaneHue.laneID = newLaneSpeed.laneID = newLaneKey.laneID = newLane;

array_push(lanes, instance_find(newLane, 0));
array_push(hueButtons, instance_find(newLaneHue, 0));
array_push(speedButtons, instance_find(newLaneSpeed, 0));
array_push(keyButtons, instance_find(newLaneKey, 0));
numLanes += 1;