/// #description Start Dialogue
previous_room = rmOverworld;
var chartName = "BrainBattle.json"
with (instance_create_depth(x, y, -1, objBattleHandler)) {
	var buffer = buffer_load(chartName);
	var jsonString = buffer_read(buffer, buffer_text);
	chart = json_parse(jsonString);
	buffer_delete(buffer);
	songSpecificDelay = -0.8;
}

image_speed = 0;
with (instance_create_depth(x + 50, y, 1, objDialogue)) {
	lines = ["Welcome Challenger!",
		"Who am I you may be wondering? Well my friends call me Gary, but I prefer The Braniac!",
		"Now prepare for a surprise attack!"]
	active = true;
	onFinish = function() { 
		objBattleHandler.started = true;
		instance_destroy(objDialogue);
		objBraniac.image_speed = 1;
	};
	target = other.id;
}
songFinish = function() {
	with (instance_create_depth(x + 50, y, 1, objDialogue)) {
		lines = ["Well played! I can't believe you actually beat me... Enjoy your victory, challenger!"]
		active = true;
		onFinish = function() { room_goto(rmVictory) };
		target = objBraniac;
	}
}
songFailure = function() {
	with (instance_create_depth(x + 50, y, 1, objDialogue)) {
		lines = ["Ha! The power of my brain is too much for you! Come back when you think you can beat me!"]
		active = true;
		onFinish = function() { room_goto(objBraniac.previous_room) };
		target = objBraniac;
	}
}
objBattleHandler.enemyID = id;