/// @description Load chart from json
var chartName = get_string("Enter chart name", "");
var filename = "charts/" + chartName + ".json";

if (!file_exists(filename)) {
	show_message("Chart not found");
	exit;
}
var f = file_text_open_read(filename);
var json = file_text_read_string(f);
file_text_close(f);

// Delete old lanes except first
for (var i = 1; i < array_length(objAddLane.lanes); i++) {
	instance_destroy(objAddLane.lanes[i]);
	instance_destroy(objAddLane.hueButtons[i]);
	instance_destroy(objAddLane.keyButtons[i]);
	instance_destroy(objAddLane.speedButtons[i]);
}
objChartEditor.chart = json_parse(json);

// Create lanes
var currentLane = instance_find(objEditorLane, 0);
var currentHue = instance_find(objLaneHue, 0)
var currentKey = instance_find(objLaneKey, 0)
var currentSpeed = instance_find(objLaneSpeed, 0)
var lanes = objAddLane.lanes;
var chart = objChartEditor.chart;
currentHue.hue = chart.lanes[0].hue;
currentKey.key = chart.lanes[0].key;
currentSpeed.noteSpeed = chart.lanes[0].noteSpeed;
objAddLane.numLanes = array_length(chart.lanes);

for (var i = 1; i < array_length(chart.lanes); i++) {
	var newLane = instance_create_depth(currentLane.x + objEditorLane.sprite_width * 2, currentLane.y, -1, objEditorLane);
	var newLaneHue = instance_create_depth(currentLane.x + objEditorLane.sprite_width * 2, currentHue.y, -1, objLaneHue);
	var newLaneKey = instance_create_depth(currentLane.x + objEditorLane.sprite_width * 2, currentKey.y, -1, objLaneKey);
	var newLaneSpeed = instance_create_depth(currentLane.x + objEditorLane.sprite_width * 2, currentSpeed.y, -1, objLaneSpeed);
	newLane.hueID = newLaneHue;
	newLane.keyID = newLaneKey;
	newLane.speedID = newLaneSpeed;
	newLane.laneIndex = objAddLane.numLanes - 1;
	newLaneHue.laneIndex = objAddLane.numLanes - 1;
	newLaneKey.laneIndex = objAddLane.numLanes - 1;
	newLaneSpeed.laneIndex = objAddLane.numLanes - 1;
	
	newLaneHue.hue = chart.lanes[i].hue;
	newLaneKey.key = chart.lanes[i].key;
	newLaneSpeed.noteSpeed = chart.lanes[i].noteSpeed;

	// Add new objects to arrays
	array_push(objAddLane.lanes, newLane);
	array_push(objAddLane.hueButtons,newLaneHue);
	array_push(objAddLane.keyButtons, newLaneKey);
	array_push(objAddLane.speedButtons, newLaneSpeed);
	currentLane = newLane;
	currentHue = newLaneHue;
	currentKey = newLaneKey;
	currentSpeed = newLaneSpeed;
}
objChartName.chartName = chart.chartName;
objSongName.songName = chart.songName;
updateEditorDisplay()