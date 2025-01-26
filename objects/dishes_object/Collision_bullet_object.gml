var snd = audio_play_sound(boss_damage_sound,1,false);
audio_sound_gain(snd, 0.5, 0);
audio_sound_gain(snd, 0, 500);

instance_create_layer(x,y,other.layer,damage_object);

instance_destroy(other);

vulnerable = true;
sprite_index = dishes_vulnerable_sprite;
alarm_set(2,15);

if (vulnerable){
	vida -= 1;
}else{
	vida -= 1;
}

if (vida <= 0){
	instance_destroy();
	dishes_logic.win = true;
}