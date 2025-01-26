letters+=spd;
text_current=string_copy(text,1,floor(letters));
draw_set_font(pixel_font);
if(h==0) h=string_height(text);
w=string_width(text);
if(instance_exists(id)){
	if (display_time>0){
		display_time-=1;
	} 
	if (display_time==0){
		instance_destroy();
		display_time=-1;
	}
	
}