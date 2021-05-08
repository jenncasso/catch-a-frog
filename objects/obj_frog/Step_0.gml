// step event happens every single frame of your game

// get player input
key_left = keyboard_check(vk_left); // checks to see if we are pressing the specified key (virtual keyboard left)
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space); //pressed checks if it was pressed this frame

// calculate movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (move == 0) 

{
	sprite_index = sprite_frog_idle;
	image_speed = 0.4;
}

if (move != 0)
{	sprite_index = sprite_frog_hop}

if (place_meeting(x, y + 1, obj_collision)) && (key_jump)

{
	vsp = -7;
}

//horizontal collision

if (place_meeting(x + hsp,y,obj_collision))
{
	while(!place_meeting(x + sign(hsp),y,obj_collision))
	
	{
		x = x + sign(hsp);
	}
	
	hsp = 0;
}

x = x + hsp;

//vertical collision

if (place_meeting(x,y + vsp,obj_collision))
{
	while(!place_meeting(x, y + sign(vsp),obj_collision))
	
	{
		y = y + sign(vsp);
	}
	
	vsp = 0;
}

y = y + vsp;

if hsp != 0 {
    image_xscale = sign(hsp);
    sprite_index = sprite_frog_hop;
} 




  