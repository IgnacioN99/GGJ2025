y = ystart + sin(get_timer()/500000)*5;

// Check if the player is close enough
if (distance_to_object(player_object) < 60) {
    if (!instance_exists(text_object)) { // Ensure only one text_object exists
        with (instance_create_layer(x, y - 64, layer, text_object)) {
            text = other.text;
			length=string_length(text);
        }
    }
    // Check for interaction
    if (keyboard_check_pressed(ord("E"))) {
        // Perform the pickup action
        with (player_object) {
            // Example: Increase health or other stats
            health += 10;
        }
 // Update the text_object's message (optional)
    if (instance_exists(text_object)) {
        with (text_object) {
            text = "You picked up a health pack! +10 Health";
            notification_timer = 120; // Set the timer for 2 seconds
        }
    } else {
        // Create a new text_object if it doesn't exist
        with (instance_create_layer(x, y - 64, "TextLayer", text_object)) {
            text = "You picked up a health pack! +10 Health";
            notification_timer = 120; // Set the timer for 2 seconds
        }
    }
        // Destroy the pickup after collection
        instance_destroy();
    }
} else {
     if (instance_exists(text_object)) {
        with (text_object) {
            instance_destroy();
        }
    }
}

// Decrease the notification timer
if (notification_timer > 0) {
    notification_timer--;
}