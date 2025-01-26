if (audio_is_playing(scream1_sound)){
	audio_stop_sound(scream1_sound);
}
var snd = audio_play_sound(minion_die_sound,1,false);
audio_sound_gain(snd, 0.3, 0);
audio_sound_gain(snd, 0, 500);
instance_destroy(other);
instance_create_layer(x,y,layer,dying_minion_object);
instance_destroy();