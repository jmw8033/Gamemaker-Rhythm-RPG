/// @description Move up timeline 
if (keyboard_check_pressed(vk_down)) { // move up
	var numIntervals = numIntervalsMap[$ objChartEditor.difficulty];
	var deltaTime = maxTimeMap[$ objChartEditor.difficulty] / (numIntervals-1);
	currentTime -= deltaTime;
	maxTime -= deltaTime;
	updateEditorDisplay();
}