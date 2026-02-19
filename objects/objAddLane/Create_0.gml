/// @description Variables
lanes = [];
hueButtons = [];
keyButtons = [];
speedButtons = [];
numLanes = 1;
maxLanes = 7;

// Starting object
var starterHue = instance_find(objLaneHue, 0);
var starterKey = instance_find(objLaneKey, 0);
array_push(lanes, instance_find(objEditorLane, 0));
array_push(hueButtons, starterHue);
array_push(keyButtons, starterKey);
array_push(speedButtons, instance_find(objLaneSpeed, 0));

starterHue.hue = "255" 
starterKey.input = "A"
starterKey.key = ord("A");

// Add to chart save struct
array_push(objChartEditor.chart.lanes, {_x: objEditorLane.x, hue: "255", key: ord("A"), noteSpeed: 5});