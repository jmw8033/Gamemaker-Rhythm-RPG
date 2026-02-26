/// @descr Start chart
var chart = objChartTester.chart;
if (not struct_exists(chart, "songName")) {
	exit;
}
objChartTester.playing = true;
objChartTester.songAsset = asset_get_index(chart.songName);
objChartTester.audio = audio_play_sound(objChartTester.songAsset, 0 , false);
objChartTester.nextNoteIndex = 0;
