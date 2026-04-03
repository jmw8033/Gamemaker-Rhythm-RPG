/// @description  Missed note, destroy
instance_create_depth(random(room_width), random(room_height), -1, objMiss);
objBattleHandler.noteStreak = 0;
if (not objHealthbar.dead) {
	audio_play_sound(soundNoteMiss, 1, false);
}
instance_destroy();