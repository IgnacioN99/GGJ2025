var halfw=w*0.5;

draw_set_colour(c_black);
draw_set_alpha(0.5);
draw_roundrect_ext(x-halfw-border,y-h-(border*2),x+halfw+border,y,15,15,false);
draw_set_alpha(1);

DrawSetText(c_white,Font1,fa_center,fa_top);
draw_text(x,y-h-border,text_current);
