// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Attack(sAttack){
	vsp = vsp + grvt;
	
	if(sprite_index != sAttack) {
		sprite_index = sAttack;
		image_index = 0;
	}
	
	if(hsp != 0) image_xscale = sign(-hsp);
	
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
	
	if(animationEnd()) {
		canAttack = false;
		if(hsp < 0) hsp = -walkSpeed;
		else hsp = walkSpeed;
		id.alarm[3] = attackCd;
		state = ENEMYSTATE.FREE;
	}
}