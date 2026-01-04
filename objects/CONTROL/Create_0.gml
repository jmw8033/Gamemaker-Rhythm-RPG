/// @description  Set gamespeed based on refresh rate
var freq = display_get_frequency()
game_set_speed(freq, gamespeed_fps);