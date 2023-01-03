// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Attack_Finisher_Air(){
	ProccessAttack(spriteAttackAir3, spriteAttackAir3HB, 5);
	
	if(animationEnd()) {
		state = PLAYERSTATE.FREE;
	}
}