///draw_text_centered(x, y, text);
var xx = argument[0];
var yy = argument[1];
var text = argument[2];

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
    draw_text(xx, yy, text);
draw_set_halign(fa_top);
draw_set_valign(fa_left);