/// @description Handle Note Hit/Miss
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

for (var i = 0; i < array_length(bridges); i++) {
	// Check if note was hit, or if it is a chord and every note was hit
	var bridgeKey = bridges[i].key;
	if (not keyboard_check_pressed(bridgeKey)) {
		continue;
	}
	if (targetNote != noone) {
		if (position_meeting(targetNote.x, targetNote.y, bridges[i]) and bridgeKey == noteKey) {
			objBattleHandler.noteStreak += 1;
			noteHit = true;
			instance_destroy(targetNote);
			break;
		}
	}		
}

if (not noteHit) {
	instance_create_depth(random(room_width), random(room_height), -1, objMiss);
	objBattleHandler.noteStreak = 0;
}