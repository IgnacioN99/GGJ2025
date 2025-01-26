// Draw the text
draw_set_font(pixel_font) 
draw_set_color(text_color);
draw_text(x,y,current_text);

// Draw the blinking arrow
if (arrow_visible && (arrow_blink_timer < 15)) {
    draw_sprite(arrow_sprite, 0, arrow_position[0], arrow_position[1]); // Arrow uses the position set in `arrow_position`
}
