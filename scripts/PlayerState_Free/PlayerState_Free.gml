// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Free(){
//Calculate Movement
var _move = key_right - key_left;
if(hasSword) hsp = _move * wlksp;
else hsp = _move * runsp;
vsp = vsp + grvt;

if(hsp != 0) image_xscale = sign(hsp);

//On The Floor Logic
var onTheFloor = true;
if(!place_meeting(x, y + 1, oWall)) {
	onTheFloor = false;
}

//Jump Logic
if(onTheFloor) && (key_jump) {
	if(hasSword) vsp = -jmpspS;
	else vsp = -jmpsp;
}

var _atLedge = false;

//Horizontal Collision
if(place_meeting(x + hsp, y, oWall)) {
	var _horiWall = instance_place(x + hsp, y, oWall);
	
	if(!position_meeting((sign(hsp) == 1) ? _horiWall.bbox_left : _horiWall.bbox_right, _horiWall.bbox_top -1, oWall)){
		_atLedge = true;
		var _ledgeAboveOrBelow = sign (oPlayer.bbox_top - _horiWall.bbox_top);
	}
	
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

if(_atLedge) && (_ledgeAboveOrBelow != sign(oPlayer.bbox_top - _horiWall.bbox_top)) && (!onTheFloor) && (!hasSword) && (canLedgeGrab) {
	y = _horiWall.bbox_top + sprite_get_yoffset(sPlayerI_BackSword);
	state = PLAYERSTATE.LEDGE;

}

//Animation
if(!onTheFloor) {
	if(key_attack) && (canAirAttack) && (hasSword) {
		canAirAttack = false;
		if(key_down) state = PLAYERSTATE.ATTACK_FINISHER_AIR
		else {
			audio_play_sound(AttackAir_1, 0, false);
			state = PLAYERSTATE.ATTACK_SLASH_AIR;
		}
	}
	if(sign(vsp) > 0) {
		sprite_index = spriteFall;
	}
	else {
		sprite_index = spriteJumping;
		if(animationEnd()) image_index = 3;
	}
}
else {
	canAirAttack = true;
	image_speed = 1;
	if(key_attack) && (hasSword) {
		audio_play_sound(Attack_1, 0, false);
		state = PLAYERSTATE.ATTACK_SLASH;
	}
	if(hsp == 0) {
		if(key_sword) { 
			state = PLAYERSTATE.SWORD; 
		}
		else if(key_down) {
			state = PLAYERSTATE.CROUCH;
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

}