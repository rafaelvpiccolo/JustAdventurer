// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Dead(){
	flash = 0;
	if(sprite_index != sSlimeD) {
		sprite_index = sSlimeD;
		image_index = 0;
	}
	if(animationEnd()) instance_destroy();
}