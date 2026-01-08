/// @description  Missed note, destroy
objHealthbar.hp -= 10;
if (not objHealthbar.dead) {
	audio_play_sound(soundNoteMiss, 1, false);
}
instance_destroy();