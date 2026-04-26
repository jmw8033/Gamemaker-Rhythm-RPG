/// @description Start Tutorial Dialogue
previous_room = rmOverworld;
var chartName = "Tutorial.json";
with (instance_create_depth(x, y, -1, objBattleHandler)) {
	var buffer = buffer_load(chartName);
	var jsonString = buffer_read(buffer, buffer_text);
	chart = json_parse(jsonString);
	buffer_delete(buffer);
}

image_speed = 0;
with (instance_create_depth(x + 50, y, 1, objDialogue)) {
	lines = [
		"Hey there, traveler! I'm Deery, your friendly tutorial guide!",
		"Notes will fall from the top of the screen toward the bridge at the bottom.",
		"When a note reaches the bridge, press the matching key to hit it!",
		"The five lanes use the keys: A, S, D, F, and G",
		"Hit notes to keep your streak going and score points. Missing notes resets your streak.",
		"Ready? Let's practice! Here we go!"
	]
	active = true;
	onFinish = function() {
		objBattleHandler.started = true;
		instance_destroy(objDialogue);
		objDeer.image_speed = 1;
	};
	target = other.id;
}
songFinish = function() {
	with (instance_create_depth(x + 50, y, 1, objDialogue)) {
		lines = ["Great job! You've got the hang of it! Now head out and explore the town. Watch out for The Braniac though - he likes to challenge people to rhythm battles!"]
		active = true;
		onFinish = function() { room_goto(objDeer.previous_room) };
		target = objDeer;
	}
}
objBattleHandler.enemyID = id;
