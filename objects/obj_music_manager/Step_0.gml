// Solo reproduce la música si no se está reproduciendo ya
if (!audio_is_playing(bgm_music)) {
    audio_play_sound(bgm_music, 1, true); // Reproduce la música de fondo a volumen alto y en bucle
}
	