// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_state_alert(){
// behavior 
	my_dir = point_direction(x, y, obj_frog.x, obj_frog.y);
	moveX = lengthdir_x(spd, my_dir);
	moveY = lengthdir_y(spd, my_dir);
	x += moveX
	y += moveY
	
	//transition triggers
	if(!collision_circle(x,y,360,obj_frog,false,false)){
		state = states.idle;
	}
	
	/*if(collision_circle(x,y,32,obj_frog,false,false)){
		state = states.attack;	
	}
	*/
	sprite_index = sprite_enemy_attack;
	image_xscale = sign(moveX);
	
}