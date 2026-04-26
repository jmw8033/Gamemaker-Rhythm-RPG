/// @description Draw healthbar
hp = min(hp, 100);
var displayHp = max(hp, 0);
draw_healthbar(10, 10, 150, 20, displayHp, c_black, c_red, c_green, 0, true, true);