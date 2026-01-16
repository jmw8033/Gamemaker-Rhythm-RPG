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
firstLane.hue = objChartTester.chart.lanes[0].hue;
firstLane.key = objChartTester.chart.lanes[0].key;
firstLane.noteSpeed = objChartTester.chart.lanes[0].noteSpeed;
array_push(lanes, firstLane);
for (var i = 0; i < array_length(objChartTester.chart.lanes); i++) {
	var lane = instance_create_depth(firstLane.x + (i + 1) * sprite_get_width(sprEditorLane), firstLane.y, -1, objTesterLane);
	array_push(lanes, lane);
	lane.hue = objChartTester.chart.lanes[i].hue;
	lane.key = objChartTester.chart.lanes[i].key;
	lane.noteSpeed = objChartTester.chart.lanes[i].noteSpeed;
}
