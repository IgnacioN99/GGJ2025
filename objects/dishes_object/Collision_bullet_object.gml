instance_destroy(other)
if (vulnerable){
	vida -= 10;
}else{
	vida -= 1;
}

if (vida <= 0){
	instance_destroy();
	dishes_logic.game_over = true;
}