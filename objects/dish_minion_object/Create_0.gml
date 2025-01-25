min_dist = 300;
random_dist = min_dist + random_range(0,min_dist*1.25); // distancia a la que comienza el salto hacia el jugador
max_speed = 5;
initial_speed = 3;
jump_gravity = 1;

just_spawn = true;


//Corre hacia la izquierda
function run(){
	x -= initial_speed;
	if (initial_speed < max_speed){
		initial_speed += 0.1;
	}
}


is_jumping = false;
vx = 0;
vy = 0;
// setea las variables para saltar hacia un punto objetivo
function set_jump(target_x,target_y){
	start_x = x;
	start_y = y;
	speed_x = (x - target_x)/random_range(30,70); // Setea una velocidad hor. random

	// Frames que tardara en alcanzar el objetivo en base a la velocidad h
	time_to_target = abs(target_x - start_x) / speed_x;

	// Calcular la velocidad inicial del salto
	speed_y = (target_y - start_y) / time_to_target - 0.5 * jump_gravity * time_to_target;

	// Aplicar velocidad inicial
	vx = sign(target_x - start_x) * speed_x; // puede saltar hacia izq o der
	vy = speed_y;
}

function jump(){
	x += vx;
	y += vy;

	vy += jump_gravity;
}