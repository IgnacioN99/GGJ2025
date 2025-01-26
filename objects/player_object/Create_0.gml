h_speed = 0;
v_speed = 0;
grv = 0.4;
walk_spd=4;
max_health = 3; // Vida máxima
p_health = max_health; // Vida actual
temp_health=0;
temp_health_timer=300;

normal_sprite = sprite_index; // Default sprite
damage_sprite = player_damage_sprite; // Damage sprite
is_flashing = false; // Track if the player is currently flashing

function descontar_vida(){
	if(temp_health>0){
		temp_health-=1;
	}else{
		p_health-=1;
	}
    if (p_health > 0) {
        sprite_index = player_damage_sprite;
		image_speed=0;
        is_flashing = true;
        alarm_set(0,5);  // Start blinking
        alarm_set(1,30); // Stop the flash after 30 steps
    }
}