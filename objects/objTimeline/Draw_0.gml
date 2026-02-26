/// @description Draw timescale
var offset = sprite_get_height(sprSolidNote) * 2;
draw_text(x, y, currentTime);
draw_text(x, y - offset, currentTime + 1);
draw_text(x, y - 2 * offset, currentTime + 2);
draw_text(x, y - 3 * offset, currentTime + 3);
draw_text(x, y - 4 * offset, currentTime + 4);
draw_text(x, y - 5 * offset, currentTime + 5);
draw_text(x, y - 6 * offset, currentTime + 6);
draw_text(x, y - 7 * offset, currentTime + 7);
draw_text(x, y - 8 * offset, currentTime + 8);
draw_text(x, y - 9 * offset, currentTime + 9);
draw_text(x, y - 10 * offset, currentTime + 10);