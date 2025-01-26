// Evento Create del objeto `obj_menu`

// Variable que indica la opción seleccionada (0 es "Iniciar", 1 es "Salir")
selected_option = 0;  

// Reproducir música del menú (asegúrate de tener una música en el recurso de GameMaker)
music_menus = audio_play_sound(music_menu, 100, true);  // Reproduce en loop

// Detener cualquier música del juego, si se estaba reproduciendo
if (audio_is_playing(music_menus)) {
    audio_stop_sound(music_menus);
}
