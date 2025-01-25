x = player_object.x+5;
y = player_object.y-140;

image_angle = point_direction(x,y,mouse_x,mouse_y);
recoil=max(0,recoil-1);
firing_delay = firing_delay-1;
if (mouse_check_button(mb_left)) && (firing_delay<0){
	firing_delay = 5;
	with(instance_create_layer(x,y,"bullet_instance", bullet_object)){
		speed=25;
		direction= other.image_angle +random_range(-5,5);
		image_angle = direction;
	}
}
x=x-lengthdir_x(recoil,image_angle);
y=y-lengthdir_y(recoil,image_angle);

if (image_angle>90)&&(image_angle<270){
	image_yscale=-1;
}else{
	image_yscale=1;
}