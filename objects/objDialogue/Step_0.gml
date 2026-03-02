// @description Typewriter dialogue
if (not active) exit;

// Typewriter
charTimer++;
if (charTimer >= charDelay) {
    charTimer = 0;
    var fullText = lines[currentLine];
    if (charIndex < string_length(fullText)) {
        charIndex++;
        displayText = string_copy(fullText, 1, charIndex);
    }
}

if (keyboard_check_pressed(vk_enter)) {
    var fullText = lines[currentLine];
    if (charIndex < string_length(fullText)) {
        // Skip to end of current line
        charIndex = string_length(fullText);
        displayText = fullText;
    } else {
        // Advance to next line or finish
        currentLine++;
        if (currentLine >= array_length(lines)) {
            active = false;
            currentLine = 0;
            if (not is_undefined(onFinish)) {
                script_execute(onFinish);
            }
        } else {
            charIndex = 0;
            displayText = "";
        }
    }
}