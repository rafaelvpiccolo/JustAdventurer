// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Attack_Finisher(){
	ProccessAttack(sPlayerA3_FloorS, sPlayerA3_FloorSHB, 5);
	
	if(animationEnd()) {
		state = PLAYERSTATE.FREE;
	}
}