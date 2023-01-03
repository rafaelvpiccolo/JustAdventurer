// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Attack_Slash_Air(){
	
	ProccessAttack(spriteAttackAir1, spriteAttackAir1HB, 1);
	
	if(key_attack) && (image_index >= 3) {
		state = PLAYERSTATE.ATTACK_COMBO_AIR;
	}
	
	if(animationEnd()) {
		state = PLAYERSTATE.FREE;
	}
}