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
	
	// Update chart save struct
	var newNotes = [];
	var chart = objChartEditor.chart;
	for (var i = 0; i < array_length(chart.notes); i += 1) {
		if (chart.notes[i].lane != objAddLane.numLanes - 1) {
			array_push(newNotes, chart.notes[i]);
		}
	}
	chart.notes = newNotes;
	updateEditorDisplay();
	array_pop(objChartEditor.chart.lanes);
	objAddLane.numLanes -= 1;
}