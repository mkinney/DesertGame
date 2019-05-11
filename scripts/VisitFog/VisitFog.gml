xx = argument0;
yy = argument1;

if (instance_exists(oFog))
{
	var inst = instance_position(xx, yy, oFog);
	if (inst != noone) 
	{
		instance_destroy(inst);
	}
}