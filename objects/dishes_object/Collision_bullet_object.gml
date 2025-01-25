instance_destroy(other)
if (vulnerable){
	vida -= 10;
}else{
	vida -= 1;
}

if (vida <= 0){
	dishes_logic.end_game = true;
}