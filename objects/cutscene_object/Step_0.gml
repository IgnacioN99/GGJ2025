// Animate the current sprite
if (current_step == 2) {
    // Slow down animation for the third sprite
    animation_timer += animation_speed;
    if (animation_timer >= 1) {
        animation_timer = 0;
        frame_counter++;
        if (frame_counter >= sprite_get_number(cutscene_images[current_step])) {
            frame_counter = sprite_get_number(cutscene_images[current_step]) - 1; // Stay on the last frame
        }
    }

    // Show text only on the last frame
    if (frame_counter == sprite_get_number(cutscene_images[current_step]) - 1) {
        if (!instance_exists(cutscene_text_object)) {
            // Create the text object dynamically
            var text_instance = instance_create_layer(texts_positions[current_step][0], y + texts_positions[current_step][1], "text_layer", cutscene_text_object); // Adjust position

            // Pass text and arrow data
            text_instance.full_text = texts[current_step]; // The text to display
            text_instance.text_color = c_white; // Set a specific color
            text_instance.arrow_position = [text_instance.x + 400, text_instance.y + 20]; // Adjust arrow position
			text_instance.arrow_sprite = w_arrow_sprite;
        }
    }
} else {
    // Default animation for other cutscenes
    frame_counter++;
    if (frame_counter >= sprite_get_number(cutscene_images[current_step])) {
        frame_counter = 0; // Reset animation if it loops
    }
	
	    // Show text for other cutscenes
    if (!instance_exists(cutscene_text_object)) {
        // Create the text object dynamically
        var text_instance = instance_create_layer(x+texts_positions[current_step][0], y+texts_positions[current_step][1], "text_layer", cutscene_text_object); // Adjust position

        // Pass text and arrow data
        text_instance.full_text = texts[current_step];
        text_instance.text_color = (current_step == 0 || !current_step == total_steps) ? c_black : c_white; // Different colors for each step
        text_instance.arrow_position = [text_instance.x + 450, text_instance.y + 50]; // Adjust arrow position
		text_instance.arrow_sprite = (current_step == 0 || !current_step == total_steps) ? b_arrow_sprite : w_arrow_sprite;
    }
}

// Advance to the next cutscene step
if (keyboard_check_pressed(vk_anykey)) {
	instance_destroy(cutscene_text_object)
    current_step++;
    if (current_step < total_steps) {
        // Load the next cutscene step
        frame_counter = 0;
    } else {
        // End the cutscene
        instance_destroy();
		room_goto(dishes_room);
    }
}