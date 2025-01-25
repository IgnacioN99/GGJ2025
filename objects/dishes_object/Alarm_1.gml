/*
Instancia minions
*/
instance_create_layer(x,y,"Instances",dish_minion_object);
alarm_set(1,interval_rain + random_range(-50,50))