/// @description Hit note
if (not keyboard_check_pressed(key)) {
	objHealthbar.hp -= 5;
	exit;	
}

var noteHit = noone;

with (parNote) {
	if (position_meeting(x, y, objBridge) and key == other.key) {
		show_debug_message(chord);
		noteHit = id;
		// If chord, check all other notes
		if (array_length(chord) > 0) {
			var chord_hit = true
			for (var i = 0; i < array_length(chord); i++) {
				if (not keyboard_check_pressed(chord[i])) {
					chord_hit = false;
				}
			}
			if (not chord_hit) {
				noteHit = noone;
			}
		}
		break;
	}
}
if (noteHit == noone) {
	objHealthbar.hp -= 5;
	exit;
}

// Note hit
objHealthbar.hp += 5;
instance_destroy(noteHit);
audio_play_sound(sound1, 1, false);