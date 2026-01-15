/// @description Get note speed
noteSpeed = string_digits(get_string("Enter note speed", 5));
while (noteSpeed <= 0) {
	noteSpeed = string_digits(get_string("Enter valid note speed", 5));
}