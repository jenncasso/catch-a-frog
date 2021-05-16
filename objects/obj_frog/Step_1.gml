firingdelay = firingdelay - 1;
if (keyboard_check(ord("V")) && firingdelay < 0)

{
	firingdelay = 5;
	with (instance_create_layer(x,y, "Projectiles", obj_frog_projectile))
	
	{
		speed = 25;
		direction = other.direction;
	}
}