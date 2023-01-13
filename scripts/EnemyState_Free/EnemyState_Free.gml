// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Free(spriteWalk){
	vsp = vsp + grvt;
	
	if(sprite_index != spriteWalk) {
		sprite_index = spriteWalk;
		image_index = 0;
	}
	
	if(hsp != 0) image_xscale = sign(-hsp);
	
	if(grounded) && (afraidOfHeights) && (!place_meeting(x - sprite_width / 1.5, y + 1, oWall)) {
		hsp = -hsp;
	}
	
	if(!place_meeting(x, y + 1, oWall)) grounded = false;
	else grounded = true;
	
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
		hsp = -hsp;
	}
	x = x + hsp;
	if(point_distance(oPlayer.x, oPlayer.y, x, y) < 70) && (canAttack) && (!place_meeting(x, y -10, oWall)) {
		if(oPlayer.x > x) hsp = 3;
		else hsp = -3;
		//vsp = -3
		state = ENEMYSTATE.ATTACK;
	}
	
	if(idle) && (grounded) {
		state = ENEMYSTATE.IDLE
	}
}