// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Sword(){
	vsp = vsp + grvt;
	//Horizontal Collision
	if(place_meeting(x + hsp, y, oWall)) {
		while(!place_meeting(x + sign(hsp), y, oWall)) {
			x = x + sign(hsp);
		}
		hsp = 0;
	}
	x = x + hsp;
	
	//Vertical Collision
	if(place_meeting(x, y + vsp, oWall)) {
		while(!place_meeting(x, y + sign(vsp), oWall)) {
			y = y + sign(vsp);
		}
		vsp = 0;
	}
	y = y + vsp;
	
	if(hasSword) {
		if(sprite_index != sPlayer_Sheathe) {
			audio_play_sound(Undraw, 0, false);
			image_index = 0;
			sprite_index = sPlayer_Sheathe;
		}
	}
	else {
		if(sprite_index != sPlayer_Draw) {
			audio_play_sound(Draw, 0, false);
			image_index = 0;
			sprite_index = sPlayer_Draw;
		} 
	}
	
	if(animationEnd()) {
			hasSword = !hasSword;
			state = PLAYERSTATE.FREE;
	}
}