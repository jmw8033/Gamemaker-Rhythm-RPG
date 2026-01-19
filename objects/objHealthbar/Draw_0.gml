/// @description Draw healthbar
if (not dead) {
	hp = min(hp, 100);
	draw_healthbar(10, 10, 150, 20, hp, c_black, c_red, c_green, 0, true, true);
	if (hp <= 0) {
		audio_play_sound(soundDie, 1, false);
		dead = true;
	}
}