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
noteStreak = 0;
noteScore = 0;
multiplier = 1;
multiplierColor = c_aqua;

noteMap = {};
noteMap[$ object_get_name(objEditorSolidNote)] = objSolidNote;
instance_create_depth(x, y, -1, objBridgeHandler);

chartName = "";