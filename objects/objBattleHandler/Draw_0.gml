/// @description Draw Note Streak, Multiplier, Score
draw_sprite(sprStreakHUD, -1, 13, 720)
draw_text(25, 740, noteScore);
draw_text(112, 740, noteStreak);
draw_text(197, 740, multiplier);
draw_sprite_ext(sprMultiplier, -1, 199, 720, 1, 1, 0, multiplierColor, 1);