/// @description Hit note
if (not keyboard_check_pressed(key)) {
	objHealthbar.hp -= 5;
	exit;	
}

var targetNote = noone;
var maxY = -infinity;

// Find lowest note
with (parNote) {
	if (key == other.key and y > maxY and y < (objBridge.y + 10)) {
		maxY = y;
		targetNote = id;
	}
}
// Check if note was hit, or if it is a chord and every note was hit
if (targetNote != noone) {
	if (position_meeting(targetNote.x, targetNote.y, objBridge)) {
		// If chord, check all other notes
		if (array_length(targetNote.chord) > 0) {
			var chord_hit = true
			for (var i = 0; i < array_length(targetNote.chord); i++) {
				if (not keyboard_check_pressed(targetNote.chord[i])) {
					chord_hit = false;
				}
			}
			if (not chord_hit) {
				targetNote = noone;
			}
		}
	} else {
		targetNote = noone;
	}
}
// Note miss
if (targetNote == noone) {
	objHealthbar.hp -= 5;
	exit;
}

// Note hit
objHealthbar.hp += 5;
instance_destroy(targetNote);
//audio_play_sound(sound1, 1, false);