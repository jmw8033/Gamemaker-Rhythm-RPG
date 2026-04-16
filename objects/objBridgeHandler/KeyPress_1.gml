/// @description Handle Note Hit/Miss
// Exit if song hasnt started
if (not objBattleHandler.playing) {
	exit;
}
var noteHit = false;
// Find lowest note
var targetNote = noone;
var maxY = -infinity;
var noteKey = "";
with (parNote) {
	if (y > maxY and y < (objBridge.y + 10)) {
		maxY = y;
		targetNote = id;
		noteKey = key;
	}
}
// Check for note hit
for (var i = 0; i < array_length(bridges); i++) {
	var bridgeKey = bridges[i].key;
	if (not keyboard_check_pressed(bridgeKey)) {
		continue;
	}
	// Note hit if closest note exists and bridge key is pressed and matches note key
	if (targetNote != noone) {
		if (position_meeting(targetNote.x, targetNote.y, bridges[i]) and bridgeKey == noteKey) {
			objBattleHandler.noteStreak += 1;
			noteHit = true;
			instance_destroy(targetNote);
			break;
		}
	}		
}
// If no note was hit, reset noteStreak and create miss graphic
if (not noteHit) {
	instance_create_depth(random(room_width), random(room_height), -1, objMiss);
	objBattleHandler.noteStreak = 0;
}