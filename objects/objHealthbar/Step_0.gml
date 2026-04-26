/// @description Handle player death sequence
if (dead and not deathHandled) {
	deathHandled = true;
	// Stop all music
	audio_stop_all();
	// Stop battle handler from continuing
	objBattleHandler.playing = false;
	// Destroy all active notes
	with (parNote) {
		instance_destroy();
	}
	// Fade out lanes and bridges
	with (objBattleLane) {
		fadeOut = true;
	}
	with (objBridge) {
		fadeOut = true;
	}
	// Trigger enemy failure dialogue
	if (instance_exists(objBattleHandler) and objBattleHandler.enemyID != noone) {
		script_execute(objBattleHandler.enemyID.songFailure);
	}
}
