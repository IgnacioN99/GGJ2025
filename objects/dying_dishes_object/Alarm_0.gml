effect_create_above(ef_explosion,x+random_range(-100,100),y+random_range(0,350),random_range(10,50),c_white);
if (count == 10){
	alarm_set(0,0);
}else{
	alarm_set(0,30);
}
count += 1;