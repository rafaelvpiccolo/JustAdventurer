// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Ledge(){
	vsp = 0;
	
	if(sprite_index != sPlayerLedge) {
		sprite_index = sPlayerLedge;
		image_index = 0;
	}
	
	if(key_jump) {
		canLedgeGrab = false;
		vsp = -jmpsp;
		state = PLAYERSTATE.FREE;
		oPlayer.alarm[1] = 5;
	}
	else if (key_down){
		y -= 1
		state = PLAYERSTATE.FREE;
	}
}