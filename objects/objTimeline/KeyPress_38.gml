/// @description Move down timeline 
if (keyboard_check_pressed(vk_up)) { // move up
	var deltaTime = maxTimeMap[$ objChartEditor.difficulty] / 10
	currentTime += deltaTime;
	maxTime += deltaTime;
	updateEditorDisplay();
}
