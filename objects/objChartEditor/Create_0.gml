/// @description Variables
noteType = "";
chartName = "test";
songName = "soundPerfidia";
selectedNote = 0;
var bpm = 120;
var noteDivision = 2;
pixelsPerSecond = sprite_get_height(sprSolidNote) * 4;

// Chart save file struct
chart = {chartName: chartName, songName: songName, bpm: bpm, lanes: [], notes: [], noteDivision: noteDivision};
// lanes will be a list of dictionaries, ex lanes[lane1] = {x: 0, speed: 5, hue: 0, key: ord("A")}
// notes will be a list of dictionaries, ex notes[0] = {noteType: objSolidNote, timing: 2}