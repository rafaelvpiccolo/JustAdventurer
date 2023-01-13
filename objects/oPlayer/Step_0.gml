if(hasControl) {
	key_left = keyboard_check(vk_left);
	key_right = keyboard_check(vk_right);
	key_jump = keyboard_check_pressed(vk_up);
	key_down = keyboard_check(vk_down);
	key_slide = keyboard_check_pressed(vk_control);
	key_sword = keyboard_check_pressed(ord("S"));
	key_attack = keyboard_check_pressed(ord("Z"));
}
else {
	key_left = 0;
	key_right = 0;
	key_jump = 0;
	key_down = 0;
	key_slide = 0;
	key_sword = 0;
	key_attack = 0;
}

switch(state){
	case PLAYERSTATE.FREE : PlayerState_Free();
	break;
	case PLAYERSTATE.SWORD : PlayerState_Sword();
	break;
	case PLAYERSTATE.CROUCH : PlayerState_Crouch();
	break;
	case PLAYERSTATE.SLIDE : PlayerState_Slide();
	break;
	case PLAYERSTATE.LEDGE : PlayerState_Ledge();
	break;
	case PLAYERSTATE.HIT : PlayerState_Hit();
	break;
	case PLAYERSTATE.DIE : PlayerState_Die();
	break;
	case PLAYERSTATE.ATTACK_SLASH : PlayerState_Attack_Slash();
	break;
	case PLAYERSTATE.ATTACK_SLASH_AIR : PlayerState_Attack_Slash_Air();
	break;
	case PLAYERSTATE.ATTACK_COMBO : PlayerState_Attack_Combo();
	break;
	case PLAYERSTATE.ATTACK_COMBO_AIR : PlayerState_Attack_Combo_Air();
	break;
	case PLAYERSTATE.ATTACK_FINISHER : PlayerState_Attack_Finisher();
	break;
	case PLAYERSTATE.ATTACK_FINISHER_AIR : PlayerState_Attack_Finisher_Air();
	break;
}