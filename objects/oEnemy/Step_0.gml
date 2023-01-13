switch(state){
	case ENEMYSTATE.FREE : EnemyState_Free(spriteWalk);
	break;
	case ENEMYSTATE.IDLE : EnemyState_Idle(spriteIdle);
	break;
	case ENEMYSTATE.ATTACK : EnemyState_Attack(spriteAttack);
	break;
	case ENEMYSTATE.HIT : EnemyState_Hit(spriteHit);
	break;
	case ENEMYSTATE.DEAD : EnemyState_Dead(spriteDead);
	break;
}