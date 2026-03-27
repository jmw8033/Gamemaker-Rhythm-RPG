/// @description Draw timescale
var numIntervals = numIntervalsMap[$ objChartEditor.difficulty];
var deltaTime = maxTimeMap[$ objChartEditor.difficulty] / (numIntervals-1);
var offset = objChartEditor.pixelsPerSecond * deltaTime;
for (var i = 0; i < numIntervals; i++) {
	draw_text(x, y - i * offset, currentTime + i * deltaTime);
}