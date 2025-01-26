if (p_health<=0){
	instance_create_layer(x,y,layer,dead_player_object);
	instance_destroy();
}