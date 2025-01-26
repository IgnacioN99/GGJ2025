// Display text one letter at a time
if (!is_text_done) {
    text_index += text_speed;
    if (text_index >= string_length(full_text)) {
        text_index = string_length(full_text);
        is_text_done = true; // Mark text as done when fully displayed
        arrow_visible = true; // Show arrow when text is fully displayed
    }
    current_text = string_copy(full_text, 1, floor(text_index));
}

// Handle arrow blinking
if (arrow_visible) {
    arrow_blink_timer++;
    if (arrow_blink_timer > 30) {
        arrow_blink_timer = 0; // Reset blinking timer
    }
}
