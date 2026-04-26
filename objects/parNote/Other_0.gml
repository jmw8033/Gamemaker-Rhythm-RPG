/// @description  Missed note, destroy
instance_create_depth(random(room_width), random(room_height), -1, objMiss);
objBattleHandler.noteStreak = 0;
if (instance_exists(objHealthbar)) {
	if (not objHealthbar.dead) {
		audio_play_sound(sndNoteMiss, 1, false);
		objHealthbar.hp -= 5;
	}
}
instance_destroy();