// Evento Step del objeto `obj_menu`

// Navegación por las opciones con las teclas de flecha
if (keyboard_check_pressed(vk_up)) {
    selected_option -= 1;  // Mover hacia arriba
    if (selected_option < 0) {
        selected_option = 1;  // Si llega al principio, va a la última opción
    }
}

if (keyboard_check_pressed(vk_down)) {
    selected_option += 1;  // Mover hacia abajo
    if (selected_option > 1) {
        selected_option = 0;  // Si llega al final, vuelve al principio
    }
}

// Si se presiona Enter, ejecutar la opción seleccionada
if (keyboard_check_pressed(vk_enter)) {
    if (selected_option == 0) {
        // Opción "Iniciar Juego": cambiar a la room del juego
        room_goto(cutsene_room);  
        // Detener música del menú y reproducir música del juego
        audio_stop_sound(music_menus);
        music_game = audio_play_sound(bgm_music, 100, true);  // Reproducir música del juego en loop
    } else if (selected_option == 1) {
        // Opción "Salir": terminar el juego
        game_end();  
    }
}
