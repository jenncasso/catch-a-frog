// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_state_wander(){
//behavior
	counter += 1;
	x += moveX;
	y += moveY;
	
	// triggers 
	
	if(counter >= room_speed*3) {
		var change = choose(0, 1);
		switch (change) {
		case 0: state = states.idle;
		case 1:
			my_dir = irandom_range(0,359);
			moveX = lengthdir_x(spd, my_dir);
			moveY = lengthdir_y(spd, my_dir);
			counter = 0;
		}
	}
	
	//trigger: detection radius 
	if(collision_circle(x,y,128,obj_frog, false, false)){
		state = states.alert;
	}
	
	sprite_index=spr_enemy;
	image_xscale = sign(moveX);
}