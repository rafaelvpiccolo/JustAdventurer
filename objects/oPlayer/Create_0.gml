hp = 20;
vsp = 0;
hsp = 0;
wlksp = 2.5;
runsp = 3.2;
jmpsp = 6.5;
jmpspS = 5.0;
grvt = 0.3;
hasSword = false;
canSlide = true;
attackDelay = true;
canAirAttack = true;
canLedgeGrab = true;

state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();

enum PLAYERSTATE{
	FREE,
	SWORD,
	CROUCH,
	SLIDE,
	LEDGE,
	ATTACK_SLASH,
	ATTACK_SLASH_AIR,
	ATTACK_COMBO,
	ATTACK_COMBO_AIR,
	ATTACK_FINISHER,
	ATTACK_FINISHER_AIR
}