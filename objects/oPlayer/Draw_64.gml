draw_sprite(sHealthbar_Border_Bg, 0, healthbar_x, healthbar_y);
draw_sprite_stretched(sHealthbar, 0, healthbar_x, healthbar_y, min((hp/hpMax) * healthbar_width, healthbar_width), healthbar_height);
draw_sprite(sHealthbar_Border, 0, healthbar_x, healthbar_y);
draw_set_font(fHealth);
draw_set_color(c_white);
draw_text(healthbar_x + 40, healthbar_y + 50, string(hp) + " / " + string(hpMax));