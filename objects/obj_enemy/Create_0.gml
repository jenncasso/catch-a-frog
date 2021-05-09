enum states {
	idle,
	wander,
	alert,
	attack
}

state = states.idle;

states_array[states.idle] = enemy_state_idle;
states_array[states.wander] = enemy_state_wander;
states_array[states.alert] = enemy_state_alert;
// states_array[states.attack] = enemy_state_attack;

// 

counter = 0;
spd = .5;

my_dir = irandom_range(0, 359);
moveX = lengthdir_x(spd, my_dir);
moveY = lengthdir_y(spd, my_dir);