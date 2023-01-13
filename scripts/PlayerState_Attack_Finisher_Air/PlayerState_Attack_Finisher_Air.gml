// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Attack_Finisher_Air(){
	invulnerable = true;
	vsp = 6;
	var _move = key_right - key_left;
	hsp = _move * wlksp;
	if(!place_meeting(x, y + 1, oWall)) {
		ProccessAttack(sPlayerA3_AirS_Loop, sPlayerA3_AirS_LoopHB, 3);
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
		if(animationEnd(sPlayerA3_AirS_Loop)) {
			image_index = 1;
		}
	}
	else {
		if(!audio_is_playing(AttackAir_3)) audio_play_sound(AttackAir_3, 0, false);
		ProccessAttack(sPlayerA3_AirS, sPlayerA3_AirSHB, 5);
		if(animationEnd()) {
			oPlayer.alarm[3] = 10;
			state = PLAYERSTATE.FREE;
		}
	}
}