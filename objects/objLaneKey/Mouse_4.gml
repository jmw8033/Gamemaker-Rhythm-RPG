/// @description Set lane key
input = get_string("Enter key", chr(key));
while (string_length(input) > 1) {
	input = get_string("Enter valid key", chr(key));
}
key = ord(input);

// Update chart save struct
var chart = objChartEditor.chart;
chart.lanes[laneIndex].key = key;
updateEditorDisplay();