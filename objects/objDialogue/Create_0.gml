/// @description Variables
text = "";
displayText = "";
lines = [];
currentLine = 0;
charIndex = 0;
charDelay = 4; // steps between each character
charTimer = 0;
active = false;
target = noone;
onFinish = undefined; // callback function to run when dialogue is done
font = 0;
bubblePadding = 16;
bubbleWidth = 400;