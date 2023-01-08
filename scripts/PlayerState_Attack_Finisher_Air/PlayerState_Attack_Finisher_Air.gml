// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Attack_Finisher_Air(){
	vsp = 6;
	var _move = key_right - key_left;
	hsp = _move * wlksp;
	if(!place_meeting(x, y + 1, oWall)) {
		sprite_index = sPlayerA3_AirS_Loop;
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
	else {
		ProccessAttack(sPlayerA3_AirS, sPlayerA3_AirSHB, 5);
		if(animationEnd()) {
			state = PLAYERSTATE.FREE;
		}
	}
}