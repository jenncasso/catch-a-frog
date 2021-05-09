// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_state_idle(){
	//behavior
	counter =+ 1;
	//triggers
	if (counter >= room_speed * 3) {
		var change = choose(0,1);
		switch(change){
			case 0: state = states.wander;
			case 1: counter = 0; break
		}
	}
	
	if(collision_circle(x, y,64, obj_frog, false, false)) {
		state = states.alert;
	}
	//sprite
	sprite_index = sprite_enemy_idle;

}