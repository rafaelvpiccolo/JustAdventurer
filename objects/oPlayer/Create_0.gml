instance_create_layer(x, y, "Player", oCamera);

hp = 50;
hpMax = hp;
healthbar_width = sprite_get_width(sHealthbar_Border) - 35;
healthbar_height = 25;
healthbar_x = window_get_x() + 100;
healthbar_y = window_get_y() + 50;

vsp = 0;
hsp = 0;
wlksp = 2.5;
runsp = 3.2;
jmpsp = 6.5;
jmpspS = 5.0;
grvt = 0.3;
flash = 0;
slideFrame = 0;
hitFrom = 0;
hasSword = false;
canSlide = true;
attackDelay = true;
canAirAttack = true;
canLedgeGrab = true;
invulnerable = false;
hasControl = true;

state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();

enum PLAYERSTATE{
	FREE,
	SWORD,
	CROUCH,
	SLIDE,
	LEDGE,
	HIT,
	DIE,
	ATTACK_SLASH,
	ATTACK_SLASH_AIR,
	ATTACK_COMBO,
	ATTACK_COMBO_AIR,
	ATTACK_FINISHER,
	ATTACK_FINISHER_AIR
}