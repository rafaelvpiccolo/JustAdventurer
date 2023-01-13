// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyHit(damage, directionHited){
	var _damage = damage;
	var _directionHited = directionHited;
	canAttack = false;
	id.alarm[3] = 30;
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