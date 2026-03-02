/// @description Set selected note
// Doesn't work if notes are placed
if (instance_exists(parNote)) exit;

objChartEditor.difficulty = difficulty;
objChartEditor.pixelsPerSecond = objChartEditor.difficultySpeedMap[$ difficulty];
with (parDifficulty) { // Unset other buttons
	selected = false;
	image_blend = -1;
}
selected = true;
image_blend = c_green;

// Reset timeline
objTimeline.currentTime = 0
objTimeline.maxTime = objTimeline.maxTimeMap[$ difficulty];