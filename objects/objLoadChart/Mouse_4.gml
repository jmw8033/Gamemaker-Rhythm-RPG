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
objChartTester.chart = json_parse(json);

// Create lanes
var firstLane = instance_find(objTesterLane, 0);
var lanes = objChartTester.lanes;
var chart = objChartTester.chart;

firstLane.hue = chart.lanes[0].hue;
firstLane.key = chart.lanes[0].key;
firstLane.noteSpeed = chart.lanes[0].noteSpeed;
array_push(lanes, firstLane);
for (var i = 1; i < array_length(chart.lanes); i++) {
	var newLane = instance_create_depth(firstLane.x + i * sprite_get_width(sprLane), firstLane.y, -1, objTesterLane);
	array_push(lanes, newLane);
	newLane.hue = chart.lanes[i].hue;
	newLane.key = chart.lanes[i].key;
	newLane.noteSpeed = chart.lanes[i].noteSpeed;
}

// Create bridges
for (var i = 0; i < array_length(lanes); i++) {
	with (instance_create_depth(lanes[i].x + sprite_get_width(sprBridge) / 2, lanes[i].y + sprite_get_height(sprLane), -10, objBridge)) {
		image_blend = chart.lanes[i].hue;
		key = chart.lanes[i].key;
	}
}