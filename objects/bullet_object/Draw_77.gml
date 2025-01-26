var out_of_bounds = (x > window_get_width()) or (x < 0) or (y > window_get_height()) or (y<0);

if (place_meeting(x,y,ground_object) or out_of_bounds){
	instance_destroy();
}