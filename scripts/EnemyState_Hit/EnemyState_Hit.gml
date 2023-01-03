// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Hit(){
	if(sprite_index != sSlimeH) {
		sprite_index = sSlimeH;
		image_index = 0;
		
	}
	hsp = 0.1 * hitFrom;
	x = x + hsp;
	//Horizontal Collision
	if(place_meeting(x + hsp, y, oWall)) {
		while(!place_meeting(x + sign(hsp), y, oWall)) {
			x = x + sign(hsp);
		}
	hsp = -hsp;
	}
	//Vertical Collision
	if(place_meeting(x, y + vsp, oWall)) {
		while(!place_meeting(x, y + sign(vsp), oWall)) {
			y = y + sign(vsp);
		}
		vsp = 0;
	}
	y = y + vsp;
	if(hsp != 0) image_xscale = sign(hsp);
	if(animationEnd()) {
		sprite_index = sSlime;
		hsp = 0;
		state = ENEMYSTATE.FREE;
	}
}