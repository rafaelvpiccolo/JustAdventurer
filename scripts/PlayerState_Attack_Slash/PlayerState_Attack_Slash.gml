// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Attack_Slash(){
	ProccessAttack(sPlayerA1_FloorS, sPlayerA1_FloorSHB, 2);
	
	if(key_attack) && (image_index > 2) && (attackDelay == true) {
		audio_play_sound(Attack_2, 0, false);
		attackDelay = false;
		state = PLAYERSTATE.ATTACK_COMBO;
		oPlayer.alarm[2] = 4;
	}
	
	if(animationEnd()) {
		state = PLAYERSTATE.FREE;
	}
}