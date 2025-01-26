// Text logic
full_text = "";         // Full text to display
current_text = "";      // Text currently being displayed (one letter at a time)
text_index = 0;         // Tracks the current position in the text
text_speed = 0.5;       // Speed of text appearing (letters per frame)
is_text_done = false;   // Whether the text is fully displayed

// Text logic
full_text = ""; // Full text to display
current_text = ""; // Currently displayed text
text_index = 0; // Current position in the text
text_speed = 0.5; // Speed of text appearing (letters per frame)
is_text_done = false; // Whether the text is fully displayed
transformed_text=2;
// Text appearance
text_color = c_white; // Default color

// Arrow
arrow_sprite = b_arrow_sprite; // Arrow sprite
arrow_position = [x + 400, y + 20]; // Default arrow position
arrow_blink_timer = 0; // Blinking arrow timer
arrow_visible = false; // Show arrow after text finishes