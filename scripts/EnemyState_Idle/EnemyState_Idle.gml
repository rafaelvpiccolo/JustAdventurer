// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Idle(spriteIdle){
	vsp = vsp + grvt;
	hsp = 0;
	
	if(sprite_index != spriteIdle) {
		sprite_index = spriteIdle;
		image_index = 0;
	}
	
	if(!idle) {
		id.alarm[0] = random_range(120, 300);
		hsp = walkSpeed;
		state = ENEMYSTATE.FREE;
	}
	
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