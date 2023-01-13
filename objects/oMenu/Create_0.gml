/// @desc ??

audio_play_sound(BonfireSound, 0, true);

gui_width = display_get_gui_width();
gui_heigth = display_get_gui_height();
gui_margin = 300;

menu_x = gui_width / 2;
menu_y = gui_heigth - gui_margin;
menu_itemheigth = font_get_size(fMenu);
menu_committed = -1;
menu_control = true;

menu[2] = "New Game";
menu[1] = "Continue";
menu[0] = "Quit";

menu_items = array_length(menu);
menu_cursor = 2;
