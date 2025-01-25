y= ystart + sin(get_timer()/500000)*5;

// Check if the player is close enough
if (distance_to_object(player_object) < 60) {
	if (!text_displayed) {
	    if (!instance_exists(text_object)) { // Ensure only one text_object exists
	        with (instance_create_layer(x, y - player_object.sprite_height, layer, text_object)) {
	            text = other.help_text;
				length=string_length(text);
	        }
	    }
		text_displayed=true;
	}
} else {
	if (text_displayed){
	 if (instance_exists(text_object)) {
			with (text_object) {
				instance_destroy();
			}
		}
	}
}