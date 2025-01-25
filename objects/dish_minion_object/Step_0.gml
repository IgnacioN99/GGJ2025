if (just_spawn) {
	// Cuando recien spawnea salta hacia un objetivo random
	set_jump(x-100,player_object.y+64);
	just_spawn = false;
	is_jumping = true;
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
	
		if (y > player_object.y){
			y = player_object.y;
			is_jumping = false;
		}
	}
}

