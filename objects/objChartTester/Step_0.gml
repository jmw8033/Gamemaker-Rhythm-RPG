/// @descripion Handle note spawning
if (not playing) {
	exit;
}
if (nextNoteIndex < array_length(chart.notes)) {
	var songTime = audio_sound_get_track_position(audio);
	var note = chart.notes[nextNoteIndex];
	if (note.timing > songTime) {
		exit;
	}
	// Create note
	var lane = lanes[note.lane];
	with (instance_create_depth(lane.x + sprite_get_width(sprEditorLane) / 2, lane.y, -100, editorNoteMap[$ note.noteType])) {
		key = lane.key;
		noteSpeed = lane.noteSpeed;
		image_blend = lane.hue;
	}	
	nextNoteIndex++;
}