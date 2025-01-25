var player = instance_find(player_object, 0);

if (player!=noone){
	// Dibujar la vida en la esquina superior izquierda
    var start_x = 10; // Posición inicial en X
    var start_y = 10; // Posición inicial en Y
    var heart_spacing = 40; // Tamaño de cada ícono de vida

    // Dibujar corazones
    for (var i = 0; i < player.p_health; i++) {
        draw_sprite(glove_sprite, 0, start_x + (i * heart_spacing), start_y);
    }
	for (var i = 0; i < player.temp_health; i++) {
		draw_sprite(sponge_sprite, 0, start_x + (player.p_health + i) * heart_spacing, start_y);
	}
}