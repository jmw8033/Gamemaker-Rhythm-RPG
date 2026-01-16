/// @description Add new lane in editor
// Needs to check number of lane in room for default values
// Add a new lane to the right of the last one
// Also need Set lane color, key, and speed
if (numLanes >= maxLanes) {
	exit;
}
numLanes += 1;

// Create new lane and input buttons
var rightmostLane = array_last(lanes);
var rightmostHue = array_last(hueButtons);
var rightmostKey = array_last(keyButtons);
var rightmostSpeed = array_last(speedButtons);
var newLane = instance_create_depth(rightmostLane.x + objEditorLane.sprite_width * 2, rightmostLane.y, -1, objEditorLane);
var newLaneHue = instance_create_depth(rightmostLane.x + objEditorLane.sprite_width * 2, rightmostHue.y, -1, objLaneHue);
var newLaneKey = instance_create_depth(rightmostLane.x + objEditorLane.sprite_width * 2, rightmostKey.y, -1, objLaneKey);
var newLaneSpeed = instance_create_depth(rightmostLane.x + objEditorLane.sprite_width * 2, rightmostSpeed.y, -1, objLaneSpeed);
newLane.hueID = newLaneHue;
newLane.keyID = newLaneKey;
newLane.speedID = newLaneSpeed;
newLane.laneIndex = numLanes - 1;
newLaneHue.laneIndex = numLanes - 1;
newLaneKey.laneIndex = numLanes - 1;
newLaneSpeed.laneIndex = numLanes - 1;

// Add new objects to arrays
array_push(lanes, instance_find(newLane, 0));
array_push(hueButtons, instance_find(newLaneHue, 0));
array_push(keyButtons, instance_find(newLaneKey, 0));
array_push(speedButtons, instance_find(newLaneSpeed, 0));

// Set default lane values and save to chart save struct
if (numLanes == 2) {
	newLaneHue.hue = "4235519";
	newLaneKey.key = ord("B");
	newLaneKey.input = "B";
	array_push(objChartEditor.chart.lanes, {_x: newLane.x, hue: "4235519", key: ord("B"), noteSpeed: 5});
} else if (numLanes == 3) {
	newLaneHue.hue = "65535";
	newLaneKey.key = ord("C");
	newLaneKey.input = "C";
	array_push(objChartEditor.chart.lanes, {_x: newLane.x, hue: "65535", key: ord("C"), noteSpeed: 5});
} else if (numLanes == 4) {
	newLaneHue.hue = "65280";
	newLaneKey.key = ord("D");
	newLaneKey.input = "D";
	array_push(objChartEditor.chart.lanes, {_x: newLane.x, hue: "65280", key: ord("D"), noteSpeed: 5});
} else if (numLanes == 5) {
	newLaneHue.hue = "16776960";
	newLaneKey.key = ord("E");
	newLaneKey.input = "E";
	array_push(objChartEditor.chart.lanes, {_x: newLane.x, hue: "16776960", key: ord("E"), noteSpeed: 5});
} else if (numLanes == 6) {
	newLaneHue.hue = "16711680";
	newLaneKey.key = ord("F");
	newLaneKey.input = "F";
	array_push(objChartEditor.chart.lanes, {_x: newLane.x, hue: "16711680", key: ord("F"), noteSpeed: 5});
} else if (numLanes == 7) {
	newLaneHue.hue = "8388736";
	newLaneKey.key = ord("G");
	newLaneKey.input = "G";
	array_push(objChartEditor.chart.lanes, {_x: newLane.x, hue: "8388736", key: ord("G"), noteSpeed: 5});
}