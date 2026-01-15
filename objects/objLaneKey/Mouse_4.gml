/// @description Set lane key
input = get_string("Enter key", key);
while (string_length(input) > 1) {
	input = get_string("Enter valid key", key);
}
key = ord(input);