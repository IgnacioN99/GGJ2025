x = player_object.x;
y = player_object.y;
var barrel_length = sprite_width *0.5;
image_angle=point_direction(x,y,mouse_x,mouse_y-5);
recoil=max(0,recoil-1);
firing_delay = firing_delay-1;
if (mouse_check_button(mb_left)) && (firing_delay<0){
	audio_play_sound(bubble_pop_sound,1,false);
	firing_delay = 5;
	image_speed = 1;
    var bullet_x = x + lengthdir_x(barrel_length, image_angle);
    var bullet_y = y + lengthdir_y(barrel_length, image_angle);
	with(instance_create_layer(bullet_x,bullet_y,"bullet_instance", bullet_object)){
		speed=15;
		direction= other.image_angle +random_range(-5,5);
		image_angle = direction;
	}
}

if (image_index == 10){
	image_index = 0;
	image_speed = 0;
}

x=x-lengthdir_x(recoil,image_angle);
y=y-lengthdir_y(recoil,image_angle);

if (image_angle>90)&&(image_angle<270){
	image_yscale=-1;
	with(player_object){
		image_xscale=-1;
	}
}else{
	image_yscale=1;
	with(player_object){
		image_xscale=1;
	}
}