// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Attack_Combo_Air(){
	ProccessAttack(sPlayerA2_AirS, sPlayerA2_AirSHB, 2);
	
	if(key_attack) && (key_down) && (image_index >= 2) {
		state = PLAYERSTATE.ATTACK_FINISHER_AIR;
	}
	
	if(animationEnd()) {
		state = PLAYERSTATE.FREE;
	}
}