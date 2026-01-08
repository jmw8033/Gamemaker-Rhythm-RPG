/// @description Delete lane in editor
// Need to find delete rightmost lane
if (instance_number(objEditorLane) > 1) {
	var rightmostLane = array_pop(objAddLane.lanes);
	var laneHue = array_pop(objAddLane.hueButtons);
	var laneSpeed = array_pop(objAddLane.speedButtons);
	var laneKey = array_pop(objAddLane.keyButtons);
	instance_destroy(rightmostLane);
	instance_destroy(laneHue);
	instance_destroy(laneSpeed);
	instance_destroy(laneKey);
}