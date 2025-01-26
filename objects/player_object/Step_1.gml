if (p_health <= 0) {
    // Create the dead player object at the player's current position
	with(gun_object) instance_destroy();
	instance_create_layer(x, y-30, layer, dead_player_object);
    // Destroy the current player instance
    instance_destroy();
}