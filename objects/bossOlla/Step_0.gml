// Gravedad básica
verticalSpeed += gravedad; // Aumentar la velocidad por gravedad
y += verticalSpeed;        // Aplicar movimiento vertical

// Comprobar colisión con el suelo (ground_object)
if (place_meeting(x, y, ground_object)) {
    // Ajustar posición hasta que no haya colisión
    while (place_meeting(x, y, ground_object)) {
        y -= 1; // Subir hasta estar fuera del suelo
    }

    // Detener la velocidad vertical porque está apoyado
    verticalSpeed = 0;
}

// Movimiento horizontal
moveTimer--; // Reducir temporizador para el movimiento aleatorio

if (moveTimer <= 0) {
    moveTimer = 60; // Reiniciar el temporizador

    // Elegir una dirección al azar (0 = quieto, 1 = izquierda, 2 = derecha)
    var random_choice = irandom(2); 
    if (random_choice == 0) {
        moveDirection = 0; // Quieto
    } else if (random_choice == 1) {
        moveDirection = -1; // Izquierda
    } else {
        moveDirection = 1; // Derecha
    }
}

// Velocidad y movimiento horizontal
horizontalSpeed = moveDirection * walkSpeed;

// Verificar colisión horizontal antes de mover
if (!place_meeting(x + horizontalSpeed, y, ground_object)) {
    x += horizontalSpeed; // Solo moverse si no colisiona
}


