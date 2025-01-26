v_speed = v_speed + grv;
if(place_meeting(x+h_speed, y, ground_object)){
	while(!place_meeting(x+sign(h_speed),y,ground_object)){
		x = x+sign(h_speed);
	}
	h_speed = 0;
}

x = x + h_speed;

if(place_meeting(x, y+v_speed, ground_object)){
	while(!place_meeting(x,y+sign(v_speed),ground_object)){
		y = y+sign(v_speed);
	}
	v_speed = 0;
}

y = y + v_speed;