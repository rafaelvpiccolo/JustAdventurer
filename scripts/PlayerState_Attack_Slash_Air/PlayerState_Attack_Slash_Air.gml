// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Attack_Slash_Air(){
	vsp = 0;
	ProccessAttack(sPlayerA1_AirS, sPlayerA1_AirSHB, 1);
	
	if(key_attack) && (image_index >= 2) {
		audio_play_sound(AttackAir_2, 0, false);
		state = PLAYERSTATE.ATTACK_COMBO_AIR;
	}
	else if(key_attack) && (key_down) && (image_index >= 2) {
		state = PLAYERSTATE.ATTACK_FINISHER_AIR;
	}
	
	if(animationEnd()) {
		state = PLAYERSTATE.FREE;
	}
}