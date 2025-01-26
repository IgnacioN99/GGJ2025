y = ystart + sin(get_timer() / 500000) * 5;

// Autodestruccion por tiempo
lifespan--;
if (lifespan <= 0){
	if (not flashing){
		alarm_set(0,25);
		flashing = true;
		lifespan = 100;
	}else{
		alarm_set(0,0);
		visible = true;
		instance_destroy();
	}
}