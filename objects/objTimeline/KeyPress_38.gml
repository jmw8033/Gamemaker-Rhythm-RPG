/// @description Move down timeline 
if (keyboard_check_pressed(vk_up)) { // move up
	var numIntervals = numIntervalsMap[$ objChartEditor.difficulty];
	var deltaTime = maxTimeMap[$ objChartEditor.difficulty] / (numIntervals-1);
	currentTime += deltaTime;
	maxTime += deltaTime;
	updateEditorDisplay();
}
