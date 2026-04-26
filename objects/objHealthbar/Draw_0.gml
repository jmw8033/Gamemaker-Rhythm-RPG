/// @description Draw healthbar
if (not dead) {
	hp = min(hp, 100);
	draw_healthbar(10, 10, 250, 30, hp, c_gray, c_red, c_green, 0, true, false);
	if (hp <= 0) {
		audio_play_sound(sndDie, 1, false);
		dead = true;
	}
} else {
	draw_healthbar(10, 10, 150, 20, 0, c_black, c_red, c_green, 0, true, true);
}