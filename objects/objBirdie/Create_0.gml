/// @description Start Tutorial Dialogue
previous_room = rmOverworld;
var chartName = "Tutorial.json";
with (instance_create_depth(x, y, -1, objBattleHandler)) {
	var buffer = buffer_load(chartName);
	var jsonString = buffer_read(buffer, buffer_text);
	chart = json_parse(jsonString);
	buffer_delete(buffer);
	songSpecificDelay = 1.2;
}

image_speed = 0;
with (instance_create_depth(x + 50, y, 1, objDialogue)) {
	lines = [
		"Hey there, traveler! I'm Sunny, your friendly tutorial guide!",
		"Notes will fall from the top of the screen toward the bridge at the bottom.",
		"When a note reaches the bridge, press the matching key to hit it!",
		"The five lanes use the keys: A, S, D, F, and G",
		"Hit notes to keep your streak going and score points. Missing notes resets your streak.",
		"Ready? Let's practice!"
	]
	active = true;
	onFinish = function() {
		objBattleHandler.started = true;
		instance_destroy(objDialogue);
		objBirdie.image_speed = 1;
	};
	target = other.id;
}
songFinish = function() {
	with (instance_create_depth(x + 50, y, 1, objDialogue)) {
		lines = ["Great job! You've got the hang of it! Now head out and explore the town.", 
				"When you're there, you can use WASD to move around. Be careful though, who knows who may be out there lurking!"]
		active = true;
		onFinish = function() { room_goto(objBirdie.previous_room) };
		target = objBirdie;
	}
}
objBattleHandler.enemyID = id;
