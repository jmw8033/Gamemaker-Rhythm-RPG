/// @description Enter Chart Name
songName = get_string("Enter song name", "");
while (asset_get_index(songName) == -1 or asset_get_type( asset_get_index(songName)) != asset_sound) {
	songName = get_string("Enter valid song name (must be in sounds)", "");
}

// Update chart save struct
objChartEditor.chart.songName = songName;