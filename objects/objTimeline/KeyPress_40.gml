/// @description Move up timeline 
if (keyboard_check_pressed(vk_down)) { // move up
	var deltaTime = maxTimeMap[$ objChartEditor.difficulty] / 10
	currentTime -= deltaTime;
	maxTime -= deltaTime;
	updateEditorDisplay();
}