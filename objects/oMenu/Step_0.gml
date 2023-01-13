/// @desc ??

if(menu_control) {
	if(keyboard_check_pressed(vk_up)) {
		audio_play_sound(Menu_Move, 0, false);
		menu_cursor++;
		if(menu_cursor >= menu_items) menu_cursor = 0;
	}
	
	if(keyboard_check_pressed(vk_down)) {
		audio_play_sound(Menu_Move, 0, false);
		menu_cursor--;
		if(menu_cursor < 0) menu_cursor = menu_items-1;
	}
	
	if(keyboard_check_pressed(vk_enter)) {
		audio_play_sound(Menu_Enter, 0, false);
		audio_stop_sound(BonfireSound)
		menu_committed = menu_cursor;
		menu_control = false;
	}
	
}

if(menu_committed != -1) {
	switch (menu_committed)
	{
		case 2: default: {
			slideTransition(TRANS_MODE.NEXT);
		}
		break;
		case 0: game_end();
		break;
	}
}