if (distance_to_object(player_object) < 60) {
	with (player_object) {
	    // Example: Increase health or other stats
	    temp_health+=1;
	}
	if (instance_exists(text_object)) {
		with (text_object) {
		    text = other.pickup_text;
			display_time = other.help_display_time;
		}
	} else {
		// Create a new text_object if it doesn't exist
		with (instance_create_layer(x, y - 64, layer, text_object)) {
		    text = other.pickup_text;
			display_time = 120;
		}
			
	}
	instance_destroy();
}