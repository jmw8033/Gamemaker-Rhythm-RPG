/// @description  Handle Inputs
if (keyboard_check_pressed(key)) {
    if (place_meeting(x, y, parBridge) or place_meeting(x, y+18, parBridge) or place_meeting(x, y-18 , parBridge)) { 
        // Note hit
		objHealthbar.hp += 5;
        audio_play_sound(sound, 1, false);
        instance_destroy();    
    }
}

// Move
y += noteSpeed;

