if (is_flashing) {
    visible = !visible; // Toggle visibility
    alarm_set(0, 5); // Repeat every 5 steps
}