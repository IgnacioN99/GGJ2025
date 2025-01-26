if (not is_jumping){
		// Si esta por delante del jugador frena cuando esta cerca para saltar
		if (x > player_object.x) and (distance_to_object(player_object) <=  random_dist){
			set_jump(player_object.x,player_object.y+64)
			is_jumping = true;
			audio_play_sound(jump1_sound,1,false);
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

