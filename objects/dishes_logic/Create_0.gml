/*
Alarma para spawnear items
*/
pickables = [yellow_object,sponge_object]
spawn_time = 500;
alarm_set(0,500);

audio_play_sound(bgm_music, 1, true); // Reproduce la música de fondo a volumen alto y en bucle

win = false;
lose = false;
