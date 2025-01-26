audio_stop_all();
audio_play_sound(minion_die_sound,1,false);
instance_destroy(other);
instance_create_layer(x,y,layer,dying_minion_object);
instance_destroy();