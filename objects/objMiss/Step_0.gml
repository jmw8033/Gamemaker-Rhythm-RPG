/// @description Fade Out
image_alpha = max(image_alpha - fadeSpeed, 0);
if (image_alpha == 0) {
	instance_destroy();
}