/// @description Start chart
if (chart == {}) {
	exit;
}
playing = true;
songAsset = asset_get_index(chart.songName);
audio = audio_play_sound(songAsset, 0 , false);
nextNoteIndex = 0;
