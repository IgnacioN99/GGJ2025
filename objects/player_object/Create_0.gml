h_speed = 0;
v_speed = 0;
grv = 0.4;
walk_spd=4;
max_health = 3; // Vida máxima
p_health = max_health; // Vida actual
temp_health=0;
temp_health_timer=300;
function descontar_vida(){
	if(temp_health>0){
		temp_health-=1;
	}else{
		p_health-=1;
	}
}