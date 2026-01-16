/// @description  Handle Inputs
if (keyboard_check_pressed(key)) {
    if (place_meeting(x, y, objTesterLane) or place_meeting(x, y+18, objTesterLane) or place_meeting(x, y-18 , objTesterLane)) { 
        // Note hit
		objHealthbar.hp += 5;
        audio_play_sound(sound, 1, false);
        instance_destroy();    
    }
}

// Move
y += noteSpeed;

