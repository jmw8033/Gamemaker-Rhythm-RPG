function updateLaneSpeeds(){
	// Loop through notes and update
	var chart = objChartEditor.chart;
	var laneSpeed = objChartEditor.pixelsPerSecond / room_speed;
	
	for (var i = 0; i < array_length(chart.lanes); i++) {
		chart.lanes[i].noteSpeed = laneSpeed;
	}
}