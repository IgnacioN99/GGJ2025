var rnd_instance = pickables[random_range(0,2)];

var ran_x=x+random_range(-50,150);
instance_create_layer(ran_x,y,"Instances",rnd_instance);
effect_create_above(ef_firework,ran_x,y,15,c_yellow);

alarm_set(0,500);