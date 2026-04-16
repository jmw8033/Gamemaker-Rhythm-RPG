/// #description Start Dialogue
previous_room = rmOverworld;
var chartName = "Aloha.json"
with (instance_create_depth(x, y, -1, objBattleHandler)) {
	var buffer = buffer_load(chartName);
	var jsonString = buffer_read(buffer, buffer_text);
	chart = json_parse(jsonString);
	buffer_delete(buffer);
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
		lines = ["Well played bozo! I thought that would surely put you to sleep! Next time I won't give you a warning!"]
		active = true;
		onFinish = function() { room_goto(objBraniac.previous_room) };
		target = objBraniac;
	}
}
objBattleHandler.enemyID = id;