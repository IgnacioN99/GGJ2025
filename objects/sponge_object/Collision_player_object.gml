if(sprite_index!=noone){
	var picksnd2 = audio_play_sound(pick_item_sound,0.2,false);
	 audio_sound_gain(picksnd2, 0.2, 0);
	 audio_sound_gain(picksnd2, 0.2, 500);
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
	sprite_index=noone;
	alarm_set(0,60);
}