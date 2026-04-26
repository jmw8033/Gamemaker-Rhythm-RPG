/// @description Run finish script
enemyID.image_speed = 0;
enemyID.image_index = 0;
if (noteStreak == array_length(chart.notes)) {
	CONTROL.hitEveryNote = true;
}
instance_destroy(objBridgeHandler);
script_execute(enemyID.songFinish);
// Fade out lanes
for (var i = 0; i < array_length(lanes); i++) {
	with (lanes[i]) {
		fadeOut = true;
		fadeDelay = i * 20;
	}
	with (bridges[i]) {
		fadeOut = true;
		fadeDelay = i * 20;
	}
}