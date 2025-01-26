// Evento Draw del objeto `obj_menu`

// Dibujar el fondo del menú
// draw_background(FondoMenu, 0, 0);  // Asegúrate de tener un fondo llamado `background`

// Dibujar las opciones del menú
if (selected_option == 0) {
    // Opción "Iniciar Juego" seleccionada
    draw_text(320, 240, "Iniciar Juego");
} else {
    // Opción "Iniciar Juego" no seleccionada
    draw_text(320, 240, "Iniciar Juego");
}

if (selected_option == 1) {
    // Opción "Salir" seleccionada
    draw_text(320, 280, "Salir");
} else {
    // Opción "Salir" no seleccionada
    draw_text(320, 280, "Salir");
}
