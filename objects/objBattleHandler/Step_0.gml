/// @descr Handle note spawning
// Once song starts, create tracks
if (started) {
	started = false;
	// Create lanes
	var firstLane = instance_find(objBattleLane, 0);
	firstLane.image_alpha = 0;
	firstLane.fadeIn = true;
	firstLane.fadeOut = false;
	firstLane.visible = true;
	firstLane.hue = chart.lanes[0].hue;
	firstLane.key = chart.lanes[0].key;
	firstLane.noteSpeed = chart.lanes[0].noteSpeed;
	array_push(lanes, firstLane);
	for (var i = 1; i < array_length(chart.lanes); i++) {
		var newLane = instance_create_depth(firstLane.x + i * sprite_get_width(sprLane), firstLane.y, -1, objBattleLane);
		array_push(lanes, newLane);
		newLane.hue = chart.lanes[i].hue;
		newLane.key = chart.lanes[i].key;
		newLane.noteSpeed = chart.lanes[i].noteSpeed;
		newLane.fadeDelay = i * 20;
	}

	// Create bridges
	for (var i = 0; i < array_length(lanes); i++) {
		with (instance_create_depth(lanes[i].x + sprite_get_width(sprBridge) / 2, lanes[i].y + sprite_get_height(sprLane), -10, objBridge)) {
			array_push(other.bridges, id);
			image_blend = other.chart.lanes[i].hue;
			key = other.chart.lanes[i].key;
			visible = true;
			fadeDelay = i * 20;
			laneObject = other.lanes[i]
		}	
	}
	songDelay = ((firstLane.y + sprite_get_height(sprLane)) / (firstLane.noteSpeed * room_speed)) + songSpecificDelay;	
	playing = true;
}

if (not playing) exit;

// Start song after delay, so notes reach bridge and match up
songTime += delta_time / 1000000;
if (not songStarted and songTime >= songDelay) {
	songAsset = asset_get_index(chart.songName);
	audio = audio_play_sound(songAsset, 0 , false);
	songStarted = true;
}

// Create notes
while (nextNoteIndex < array_length(chart.notes)) {
	var note = chart.notes[nextNoteIndex];
	/*for (var i = 0; i < array_length(lanes); i++) {
		var dx = random_range(-0.5, 0.5);
		if (i > 0 and dx < 0) {
			dx = max(dx, -distance_to_object(lanes[i-1]));
		}
		if (i < array_length(lanes)-1 and dx > 0) {
			dx = min(dx, distance_to_object(lanes[i+1]));
		}
		lanes[i].x += dx;
	}	*/
	if (note.timing > songTime) {
		break;
	}
	// Create note
	var lane = lanes[note.lane];
	with (instance_create_depth(lane.x + sprite_get_width(sprLane) / 2, lane.y, -100, noteMap[$ note.noteType])) {
		key = lane.key;
		noteSpeed = lane.noteSpeed;
		image_blend = lane.hue;
		chord = note.chord;
		laneObject = lane;
	}	
	nextNoteIndex++;
}

// Run finish script
if (nextNoteIndex >= array_length(chart.notes)) {
	alarm[0] = (songDelay + 1) * room_speed;
	playing = false;
}