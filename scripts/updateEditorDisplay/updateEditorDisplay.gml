function updateEditorDisplay(){
	// Update display
	with (parEditorNote) {
		instance_destroy();
	}
	
	var chart = objChartEditor.chart;
	for (var i = 0; i < array_length(chart.notes); i++) {
		var note = chart.notes[i];	
		var lane = chart.lanes[note.lane];
		if (note.timing >= objTimeline.currentTime and note.timing <= objTimeline.maxTime) {
			var _y = objTimeline.y - (note.timing - objTimeline.currentTime) * objChartEditor.pixelsPerSecond;
			with (instance_create_depth(lane._x + sprite_get_width(sprSolidNote) / 2, _y, -100, note.noteType)) {
				key = lane.key;
				noteSpeed = lane.noteSpeed;
				image_blend = lane.hue;
			}
		}
	}
	array_sort(chart.notes, function(a, b) {
		return (a.timing > b.timing) - (a.timing < b.timing);
	});
}