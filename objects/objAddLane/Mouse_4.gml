/// @description Add new lane in editor
// Needs to check number of lane in room for default values
// Add a new lane to the right of the last one
// Also need Set lane color, key, and speed

var rightmostLane = array_last(lanes);
var newLane = instance_create_depth(rightmostLane.x + objEditorLane.sprite_width, rightmostLane.y, -1, objEditorLane);
var newLaneHue = instance_create_depth(newLane.x, newLane.y + 10, -1, objLaneHue);
var newLaneSpeed = instance_create_depth(newLane.x, newLane.y + 20, -1, objLaneSpeed);
var newLaneKey = instance_create_depth(newLane.x, newLane.y + 30, -1, objLaneKey);
newLaneHue.laneID = newLaneSpeed.laneID = newLaneKey.laneID = newLane;