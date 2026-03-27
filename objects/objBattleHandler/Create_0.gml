/// @descr Variables
chart = {};
playing = false;
started = false;
songAsset = "";
audio = 0;
songTime = 0;
lanes = [];
bridges = [];
nextNoteIndex = 0;
songDelay = 0;
songStarted = false;
songTime = 0;
enemyID = noone;

noteMap = {};
noteMap[$ object_get_name(objEditorSolidNote)] = objSolidNote;

var buffer = buffer_load("Aloha.json");
var jsonString = buffer_read(buffer, buffer_text);
chart = json_parse(jsonString);
buffer_delete(buffer);