var picksnd1 = audio_play_sound(pick_item_sound,0.2,false);
 audio_sound_gain(picksnd1, 0.2, 0);
 audio_sound_gain(picksnd1, 0.2, 500);
 with(gun_object){
	 powerup=true;
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
sprite_index = noone; // Hide the sprite
alarm_set(0,60);