if (win or lose){
	//Borrar todo
	instance_destroy(player_object)
	instance_destroy(gun_object)
	if (instance_exists(dish_minion_object)){
		instance_destroy(dish_minion_object)
	}
	if (instance_exists(dying_minion_object)){
		instance_destroy(dying_minion_object)
	}
	if (instance_exists(dishes_rain_object)){
		instance_destroy(dishes_rain_object)
	}
	instance_destroy(dishes_object);
}

if (win){
	win = false;
	alarm_set(0,0);
		
	//Spawnear boss muerto
	instance_create_layer(window_get_width()/2,window_get_height()/2,layer,dying_dishes_object);
	
	TextMaker(window_get_width()/2,window_get_height()/2-200,layer,"Completaste el turno!")
}else if (lose){
	lose = false;
	
	//Spawnear boss muerto
	instance_create_layer(window_get_width()/2,window_get_height()/2,layer,dead_player_object);
	
	TextMaker(window_get_width()/2,window_get_height()/2+200,layer,"No pudiste completar el turno :(")
}