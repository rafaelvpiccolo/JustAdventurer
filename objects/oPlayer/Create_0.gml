vsp = 0;
hsp = 0;
wlksp = 3;
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
	ATTACK_SLASH_AIR,
	ATTACK_COMBO,
	ATTACK_COMBO_AIR,
	ATTACK_FINISHER_AIR,
	ATTACK_FINISHER
}