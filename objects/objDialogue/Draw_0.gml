// objDialogue Draw event (not Draw GUI, so it sits in world space next to the enemy)
if (not active or target == noone) exit;

var tx = target.x + sprite_get_width(target.sprite_index) / 2 + 30;
var ty = target.y - sprite_get_height(target.sprite_index) / 2 + 80;

var fullText = lines[currentLine];
var textH = string_height_ext(fullText, -1, bubbleWidth - bubblePadding * 2);
draw_set_font(-1);
var hintH = string_height("Press ENTER to continue");
draw_set_font(font);
var bubbleH = textH + hintH + bubblePadding * 3;

// Bubble background
draw_set_color(c_white);
draw_roundrect(tx, ty, tx + bubbleWidth, ty + bubbleH, false);
draw_set_color(c_black);
draw_roundrect(tx, ty, tx + bubbleWidth, ty + bubbleH, true);

// Little tail pointing left toward the enemy
draw_triangle(tx, ty + 12, tx - 8, ty + 8, tx, ty + 20, false);
draw_set_color(c_white);
draw_triangle(tx + 1, ty + 12, tx - 6, ty + 9, tx + 1, ty + 20, false);

// Text
draw_set_color(c_black);
draw_set_font(font);
draw_text_ext(tx + bubblePadding, ty + bubblePadding, displayText, -1, bubbleWidth - bubblePadding * 2);
draw_set_font(-1);
draw_set_color(c_white);  // reset to default draw color

// "Press ENTER to continue" hint shown in small text at bottom-right once the line finishes
if (charIndex >= string_length(lines[currentLine]) and (current_time mod 800) < 400) {
    draw_set_font(-1);
    draw_set_color(c_gray);
    var hintText = "Press ENTER to continue";
    var hintX = tx + bubbleWidth - bubblePadding - string_width(hintText);
    var hintY = ty + bubblePadding + textH + bubblePadding;
    draw_text(hintX, hintY, hintText);
    draw_set_color(c_white);
}