vsp = 0;
hsp = 0;
wlksp = 4;
jmpsp = 7;
grvt = 0.3;
hasSword = true;
canSlide = true;

state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();


enum PLAYERSTATE{
	FREE,
	SLIDE,
	ATTACK_SLASH,
	ATTACK_COMBO,
	ATTACK_FINISHER
}