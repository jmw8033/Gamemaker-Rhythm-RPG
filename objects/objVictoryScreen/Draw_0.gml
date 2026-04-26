/// @description Draw victory message
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color(c_yellow);
draw_set_font(fntBrainiac);
draw_text(room_width / 2, room_height / 2 - 80, "CONGRATULATIONS!");

draw_set_color(c_white);
draw_set_font(-1);
draw_text(room_width / 2, room_height / 2, "You defeated The Braniac and beat the game!");
draw_text(room_width / 2, room_height / 2 + 40, "Thanks for playing!");
draw_text(room_width / 2, room_height / 2 + 100, "Press Enter to return to the overworld");
if (CONTROL.hitEveryNote) {
	var msg = "Hey you hit every note too! Heres a star"
	draw_text(room_width / 2, room_height / 2 + 160, msg);
	draw_sprite(sprStar, -1, room_width / 2 + string_width(msg) - 170, room_height / 2 + 142);
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);
