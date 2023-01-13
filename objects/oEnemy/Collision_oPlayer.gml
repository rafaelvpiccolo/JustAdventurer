
if(other.state != PLAYERSTATE.SLIDE) && (other.state != PLAYERSTATE.HIT) && (other.state != PLAYERSTATE.DIE) && (other.invulnerable == false) {
	other.invulnerable = true;
	other.alarm[3] = 60;
	other.hp -= damage;
	other.flash = 5;
	if(other.hp > 0) {
		other.hitFrom = image_xscale;
		other.state = PLAYERSTATE.HIT
	}
	else {
		other.hp = 0;
		other.state = PLAYERSTATE.DIE;
	}
}