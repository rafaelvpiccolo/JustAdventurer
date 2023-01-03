// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Attack_Combo(){
	ProccessAttack(spriteAttack2, spriteAttack2HB, 2);
	
	if(key_attack) && (image_index >= 4) {
		state = PLAYERSTATE.ATTACK_FINISHER;
	}
	
	if(animationEnd()) {
		//sprite_index = spriteIdle;
		state = PLAYERSTATE.FREE;
	}
}