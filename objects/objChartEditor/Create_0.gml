/// @description Variables
noteType = "";
chartName = "";
songName = "";
selectedNote = 0;
bpm = 120;
pixelsPerSecond = sprite_get_height(sprBlueNote) * 2;

// Chart save file struct
chart = {chartName: chartName, songName: songName, bpm: bpm, lanes: [], notes: []};
// lanes will be a list of dictionaries, ex lanes[lane1] = {x: 0, speed: 5, hue: 0, key: ord("A")}
// notes will be a list of dictionaries, ex notes[0] = {noteType: objSolidNote, timing: 2}