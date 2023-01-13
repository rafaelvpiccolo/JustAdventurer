// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function PlayerState_Slide() {
	if(hasSword) hsp = image_xscale * (wlksp + 1);
	else hsp = image_xscale * (runsp + 1);
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
	
	if(sprite_index != spriteSlide) {
		image_index = 0;
		sprite_index = spriteSlide;
		mask_index = spriteSlide;
	}
	
	if(place_meeting(x, y - 10, oWall)) {
		if(image_index >= 2) image_index = 0;
	}
	else {
		slideFrame = image_index;
	}
	
	if(animationEnd()) {
		slideFrame = 0;
		canSlide = false;
		mask_index = spriteIdle;
		state = PLAYERSTATE.FREE;
		oPlayer.alarm[0] = 80;
	}
}