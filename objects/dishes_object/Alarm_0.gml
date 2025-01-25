/*
Arrojar lluvia de cosas
*/
// hacer vulnerable por tiempo alarm2
vulnerable = true;
sprite_index = dishes_vulnerable_sprite;
alarm_set(2,vulnerable_duration);

for(var i=0;i<cant_rain;i++){
	instance_create_layer(random_range(i*spacing,(1+i)*spacing),0,"Instances",dishes_rain_object);
}
alarm_set(0,interval_rain + random_range(-150,150));

