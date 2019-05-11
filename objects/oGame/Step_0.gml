/// @descr

if (keyboard_check_pressed(ord("M"))) 
{
	bigmap = !bigmap;
}

if (keyboard_check_pressed(vk_escape)) 
{
	bigmap = 0;
}

if (bigmap) 
{
	//oPlayer.image_index = 1;
	view_visible[0] = false;
	view_visible[1] = true;	
	ShowFog(true);
} 
else 
{
	//oPlayer.image_index = 0;
	view_visible[0] = true;
	view_visible[1] = false;
	ShowFog(false);
}

if (room == Overworld)
{
	audio_stop_sound(S_tundra);
	audio_stop_sound(S_Title);
	if (!audio_is_playing(S_desert))
	{
		audio_play_sound(S_desert, 1000, true);
	}
}
if (room == IceWorld)
{
	audio_stop_sound(S_desert);
	audio_stop_sound(S_Title);
	if (!audio_is_playing(S_tundra))
	{
		audio_play_sound(S_tundra, 1000, true);
	}
}	
