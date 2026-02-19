/// @description Save chart to json
var chart = objChartEditor.chart;

// Make sure chart is valid
if (chart.chartName == "") {
	show_message("Please enter chart name");
	exit;
}
if (chart.songName == "") {
	show_message("Please enter song name");
	exit;
}
if (array_length(chart.notes) == 0) {
	show_message("Chart has no notes");
	exit;
}

// Save chart
var directory = "charts/";
if (!directory_exists(game_save_id + directory)) {
	directory_create(game_save_id + directory);
}
var filename = directory + chart.chartName + ".json";
var json = json_stringify(chart, false);
var tmp = filename + ".tmp";
var f = file_text_open_write(tmp);
file_text_write_string(f, json);
file_text_close(f);

if (file_exists(filename)) {
	file_delete(filename);
}
file_rename(tmp, filename);

show_message("Saved chart " + game_save_id + filename);

show_debug_message("working_directory = " + working_directory);
show_debug_message("Saving to: " + filename);
show_debug_message("Exists after save? " + string(file_exists(filename)));
show_debug_message("Tmp exists? " + string(file_exists(filename + ".tmp")));