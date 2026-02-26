function updateChords(){
	// Loop through notes and update
	var chart = objChartEditor.chart;
	var chord = [];
	var chord_keys = [];
	
	for (var i = 0; i < array_length(chart.notes) - 1; i ++) {
		if (chart.notes[i].timing == chart.notes[i+1].timing) {
			// Save note indexes and keys
			array_push(chord, i);
			array_push(chord, i+1);
			array_push(chord_keys, chart.lanes[chart.notes[i].lane].key);	
			array_push(chord_keys, chart.lanes[chart.notes[i+1].lane].key);		
			chord = array_unique(chord);
			chord_keys = array_unique(chord_keys);
			if (i == array_length(chart.notes) - 2) { // If final note is a chord, update
				for (var j = 0; j < array_length(chord); j++) {
					chart.notes[chord[j]].chord = chord_keys
				}
			}				
		} else { 
			// Chord is over, update notes chord value
			if (array_length(chord) == 0) {
				continue;
			}
			for (var j = 0; j < array_length(chord); j++) {
				chart.notes[chord[j]].chord = chord_keys
			}
			chord = [];
			chord_keys = [];
		}
	}
}