// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Attack_Finisher(){
	ProccessAttack(spriteAttack3, spriteAttack3HB, 5);
	
	if(animationEnd()) {
		//sprite_index = spriteIdle;
		state = PLAYERSTATE.FREE;
	}
}