/// @description Hit note
var _y = 0;
var noteHit = noone;

with (parNote) {
	if (position_meeting(x, y, objBridge) and y > _y and key == other.key) {
		_y = y;
		noteHit = id;
	}
}
show_debug_message(noteHit);
if (noteHit == noone) {
	objHealthbar.hp -= 5;
	exit;
}

// Note hit
objHealthbar.hp += 5;
instance_destroy(noteHit);
audio_play_sound(sound1, 1, false);