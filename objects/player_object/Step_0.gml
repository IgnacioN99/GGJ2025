var k_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var k_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var k_jump = keyboard_check_pressed(vk_space) || keyboard_check(vk_up) || keyboard_check((ord("W")));

var move = k_right - k_left;

v_speed = v_speed + grv;

if(place_meeting(x,y+1,ground_object)) && (k_jump){
	v_speed -= jump_distance;
}

if(place_meeting(x+h_speed, y, ground_object)){
	while(!place_meeting(x+sign(h_speed),y,ground_object)){
		x = x+sign(h_speed);
	}
	h_speed = 0;
}

h_speed = move * walk_spd;
x = x + h_speed;

if(place_meeting(x, y+v_speed, ground_object)){
	while(!place_meeting(x,y+sign(v_speed),ground_object)){
		y = y+sign(v_speed);
	}
	v_speed = 0;
}

y = y + v_speed;

if(temp_health>0){
	temp_health_timer-=1;
	if (temp_health_timer<=0){
		temp_health-=1;
	}
}

if(h_speed!=0) image_xscale=sign(h_speed);



// animaciones
if(!place_meeting(x,y+1,ground_object)){
	sprite_index=player_moving_sprite;
	image_speed=0;
	if(sign(v_speed)>0) image_index =1;else image_index=0;
}else{
	image_speed=1;
	if(h_speed==0){
		sprite_index=player_sprite;
	}else{
		sprite_index=player_moving_sprite;
	}
}