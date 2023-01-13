// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Die(){
	vsp = vsp + grvt;
	hsp = 0;
	
	oEnemy.canAttack = false;
	
	if(sprite_index != spriteDie) {
		sprite_index = spriteDie;
		image_index = 0;
	}
	
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
	if(hsp != 0) image_xscale = sign(!hsp);
	
	if(animationEnd()) {
		
		image_speed = 0;
	}
}