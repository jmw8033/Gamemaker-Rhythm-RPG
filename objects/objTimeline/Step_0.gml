/// @description Move timeline 
if (keyboard_check_pressed(vk_up)) { // move up
	currentTime += 1;
	maxTime += 1;
	updateEditorDisplay();
} else if (keyboard_check_pressed(vk_down)) { // move up
	currentTime -= 1;
	maxTime -= 1;
	updateEditorDisplay();
}