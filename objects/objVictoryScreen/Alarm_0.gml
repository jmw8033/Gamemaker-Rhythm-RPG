/// @description Create fireworks
var random_color = make_colour_rgb(irandom_range(0, 255), irandom_range(0, 255), irandom_range(0, 255));
effect_create_depth(0, ef_firework, random(room_width), random(room_height), random(10), random_color);
alarm[0] = room_speed * 0.1;