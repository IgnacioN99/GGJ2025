// Velocidad horizontal
horizontalSpeed = 0;
verticalSpeed = 0;

// Gravedad (si aplica)
gravedad = 0.1;

// Velocidad al caminar
walkSpeed = 4;

// Temporizador para decidir el próximo movimiento
moveTimer = 60; // Cada 60 frames (1 segundo)

// Dirección inicial
moveDirection = 0; // 0 = quieto, -1 = izquierda, 1 = derecha

// Límites de la plataforma (ajustalos según tu nivel)
leftLimit = x - 100; // Cambiá el 100 por el rango que quieras
rightLimit = x + 100;
