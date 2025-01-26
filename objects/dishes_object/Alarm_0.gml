/*
Arrojar lluvia de cosas
*/

// uno sobre el player
var first = instance_create_layer(player_object.x,0,layer,dishes_rain_object);

// dos atras
for(var i = 1;i<=2;i++){
	var ran_x = player_object.x - i * spacing;
	
	if (ran_x > 0){
		instance_create_layer(ran_x,0,layer,dishes_rain_object)
	}
}

// dos delante
for(var i = 1;i<=2;i++){
	var ran_x = player_object.x + i * spacing;
	
	if (ran_x < window_get_width()){
		instance_create_layer(ran_x,0,layer,dishes_rain_object)
	}
}


alarm_set(0,interval_rain + random_range(-150,150));

