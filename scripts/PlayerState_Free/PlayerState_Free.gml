// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Free(){
//Calculate Movement
var _move = key_right - key_left;

hsp = _move * wlksp;
vsp = vsp + grvt;

//On The Floor Logic
onTheFloor = true;
if(!place_meeting(x, y + 1, oWall)) {
	onTheFloor = false;
}

//Jump Logic
if(onTheFloor) && (key_jump) {
	vsp = -jmpsp;
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

//Animation
if(!onTheFloor) {
	if(key_attack) state = PLAYERSTATE.ATTACK_SLASH_AIR;
	if(sign(vsp) > 0) {
		sprite_index = spriteFall;
	}
	else {
		sprite_index = spriteJump;
		if(animationEnd()) image_index = 2;
	}
}
else {
	image_speed = 1;
	if(key_attack) state = PLAYERSTATE.ATTACK_SLASH;
	if(hsp == 0) {
		if(key_down) {
			sprite_index = spriteCrouching;
			mask_index = spriteCrouching;
		}
		else {
			mask_index = spriteIdle;
			sprite_index = spriteIdle;
		}
	}
	else {
		if(key_slide) && (canSlide) state = PLAYERSTATE.SLIDE;
		else sprite_index = spriteRunning;
	}
}

if(hsp != 0) image_xscale = sign(hsp);

}