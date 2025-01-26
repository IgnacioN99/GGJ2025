if (game_over){
	alarm_set(0,0);
	
	instance_destroy(player_object)
	instance_destroy(gun_object)
	if (instance_exists(dish_minion_object)){
		instance_destroy(dish_minion_object)
	}
	if (instance_exists(dying_minion_object)){
		instance_destroy(dying_minion_object)
	}
	instance_destroy(dishes_object);
	
		instance_create_layer(window_get_width()/2,window_get_height()/2,layer,dying_dishes_object);
	
}