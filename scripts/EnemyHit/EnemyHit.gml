// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyHit(argument0, argument1){
	var _damage = argument0;
	var _directionHited = argument1
	hp -= _damage;
	flash = 5;
	if(hp > 0) {
		state = ENEMYSTATE.HIT;
		hitFrom = _directionHited;
	}
	else {
		state = ENEMYSTATE.DEAD;
	}
}