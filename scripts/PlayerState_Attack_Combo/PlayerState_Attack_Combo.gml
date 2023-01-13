// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Attack_Combo(){
	ProccessAttack(sPlayerA2_FloorS, sPlayerA2_FloorSHB, 2);
	
	if(key_attack) && (image_index > 3) && (attackDelay == true) {
		audio_play_sound(Attack_3, 0, false);
		attackDelay = false;
		state = PLAYERSTATE.ATTACK_FINISHER;
		oPlayer.alarm[2] = 4;
	}
	
	if(animationEnd()) {
		state = PLAYERSTATE.FREE;
	}
}