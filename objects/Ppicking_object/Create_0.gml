show_message1 = false; // Whether to display the pickup message
text_displayed=false;


if (!text_displayed) {
        if (!instance_exists(text_object)) { // Ensure only one text_object exists
            with (instance_create_layer(view_xview[0] + (view_wview[0] / 2), view_yview[0] + 100, layer, text_object)) {
                // Set the text and calculate its length
                text = other.help_text;
                length = string_length(text);
            }
        }
        text_displayed = true; // Mark the text as displayed
} else {
    if (text_displayed) {
        if (instance_exists(text_object)) {
            with (text_object) {
                instance_destroy();
            }
        }
        text_displayed = false; // Allow the text to be displayed again if the player comes back
    }
}

lifespan = 300;
flashing = true;
