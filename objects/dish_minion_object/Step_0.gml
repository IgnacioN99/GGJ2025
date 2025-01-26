if (instance_exists(player_object)) {
	if (not is_jumping){
			// Si esta por delante del jugador frena cuando esta cerca para saltar
			if (x > player_object.x) and (distance_to_object(player_object) <=  random_dist){
				set_jump(player_object.x,player_object.y+64)
				is_jumping = true;
				audio_play_sound(jump1_sound, 0.2,false);
				audio_sound_gain(jump1_sound, 0.2, 0);
				audio_sound_gain(jump1_sound, 0.2, 500);
			}else{
				run();
			}
	}else{
		if (not is_jumping){
			// Si esta por delante del jugador frena cuando esta cerca para saltar
			if (x > player_object.x) and (distance_to_object(player_object) <=  random_dist){
				set_jump(player_object.x,player_object.y+64)
				is_jumping = true;
			}else{
				run();
			}
		}else{
			jump();

			if (y > ground_object.y){
				y = ground_object.y;
				is_jumping = false;
			}
		}
	}
}