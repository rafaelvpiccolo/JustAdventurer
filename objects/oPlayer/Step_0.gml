key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_up);
key_down = keyboard_check(vk_down);
key_slide = keyboard_check_pressed(vk_control);
key_attack = keyboard_check(ord("Z"));

switch(state){
	case PLAYERSTATE.FREE : PlayerState_Free();
	break;
	case PLAYERSTATE.SLIDE : PlayerState_Slide();
	break;
	case PLAYERSTATE.ATTACK_SLASH : PlayerState_Attack_Slash();
	break;
	case PLAYERSTATE.ATTACK_COMBO : PlayerState_Attack_Combo();
	break;
	case PLAYERSTATE.ATTACK_FINISHER : PlayerState_Attack_Finisher();
	break;
}