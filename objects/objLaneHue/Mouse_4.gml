/// @description Pick color
hue = get_string("Enter decimal color", hue);

// Update chart save struct
var chart = objChartEditor.chart;
chart.lanes[laneIndex].hue = hue;
updateEditorDisplay();