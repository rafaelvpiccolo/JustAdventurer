// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Crouch(){
	if(key_down) {
		sprite_index = spriteCrouching;
		mask_index = sPlayerC_BackSword;
	}
	else {
		mask_index = sPlayerI_BackSword;
		state = PLAYERSTATE.FREE;
	}
	hsp = 0;
	vsp = vsp + grvt;
	//Vertical Collision
	if(place_meeting(x, y + vsp, oWall)) {
		while(!place_meeting(x, y + sign(vsp), oWall)) {
			y = y + sign(vsp);
		}
		vsp = 0;
	}
	y = y + vsp;
	//Horizontal Collision
	if(place_meeting(x + hsp, y, oWall)) {
		while(!place_meeting(x + sign(hsp), y, oWall)) {
			x = x + sign(hsp);
		}
		hsp = 0;
	}
	x = x + hsp;
}