image_angle += rotation_speed;


if(y >= max_height){
	falling = true;
}

if (falling){
	y += rise_speed * 1.5;
	x += sin(get_timer() / 500000) * 5
}else{
	y -= rise_speed;
}

if (y > window_get_height() + 100){
	instance_destroy();
}