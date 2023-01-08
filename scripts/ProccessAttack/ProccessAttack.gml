// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ProccessAttack(spriteAttack, spriteAttackHB, damage){
	var _move = key_right - key_left;
	hsp = _move * .5;
	if(place_meeting(x + hsp, y, oWall)) {
		while(!place_meeting(x + sign(hsp), y, oWall)) {
			x = x + sign(hsp);
		}
	hsp = 0;
	}
	x = x + hsp;
	if(hsp != 0) image_xscale = sign(hsp);
	
	if(sprite_index != spriteAttack) {
		sprite_index = spriteAttack;
		image_index = 0;
		ds_list_clear(hitByAttack);
	}
	mask_index = spriteAttackHB;
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x, y, oSlime, hitByAttackNow, false);
	if(hits > 0) {
		for(var i = 0; i < hits; i++) {
			var hitID = ds_list_find_value(hitByAttackNow, i);
			if(ds_list_find_index(hitByAttack, hitID) == -1) {
				ds_list_add(hitByAttack, hitID);
				with(hitID){
					EnemyHit(damage, other.image_xscale);
				}
			}
		}
	}
	ds_list_destroy(hitByAttackNow);
	mask_index = spriteIdle;
}