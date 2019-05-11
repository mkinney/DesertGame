fog_visible = argument0;

if (instance_exists(oFog))
{
	if (fog_visible) 
	{
		oFog.image_index = 0;
		//instance_activate_object(oFog);
	} 
	else 
	{
		oFog.image_index = 1;
		//instance_deactivate_object(oFog);
	}
}