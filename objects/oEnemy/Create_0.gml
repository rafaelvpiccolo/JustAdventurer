vsp = 0;
walkSpeed = 1.5;
hsp = walkSpeed;
grvt = 0.3;
flash = 0;
hitFrom = 0;
idle = false;

state = ENEMYSTATE.IDLE;

enum ENEMYSTATE{
	FREE,
	IDLE,
	HIT,
	DEAD,
	ATTACK
}
