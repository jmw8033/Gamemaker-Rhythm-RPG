/// @description Fade in
x = laneObject.x + sprite_get_width(sprLane) / 2
if (fadeIn) {
	if (fadeDelay > 0) {
		fadeDelay --;
	} else {
		image_alpha = min(image_alpha + fadeSpeed, 1);
	}
	if (image_alpha == 1) {
		fadeIn = false;
	}
}

if (fadeOut) {
	if (fadeDelay > 0) {
		fadeDelay --;
	} else {
		image_alpha = max(image_alpha - fadeSpeed, 0);
	}
}	