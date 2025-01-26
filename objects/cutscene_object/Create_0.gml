// Cutscene variables
cutscene_images = [cts_1, cts_2, cts_3, cts_4, cts_finale]; // Array of cutscene sprites
current_step = 0; // Current cutscene step
total_steps = array_length(cutscene_images); // Total number of steps
frame_counter = 0; // Tracks animation frames for the current sprite
texts =["Este turno no termina mas...\n Cuanto tiempo me falta?","Creo que falta poco...\n puedo terminarlo..."," ????!!!","Solo un poco mas....","asd"];
texts_positions=[[150,570],[150,630],[150,630],[150,650],[900,900]]
texts_size=[];

// Animation variables
animation_speed = 0.2; // Slower animation speed (lower is slower)
animation_timer = 0;   // Tracks time for advancing frames