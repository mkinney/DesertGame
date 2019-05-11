/// @desc controling menu

//ease in
menu_x += (menu_x_traget - menu_x) / menu_speed;

//controls
if (menu_control)
{
	if (keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W")))
	{
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}	
	if (keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S")))
	{
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items - 1;
	}
	if (keyboard_check_pressed(vk_enter))
	{
		menu_x_traget = gui_width + 200;
		menu_committed = menu_cursor;
		menu_control = false;
	}	
}	

if (menu_x > gui_width + 150) and (menu_committed != -1)
{
	room_goto(Overworld);
	//show_debug_message(menu_cursor);
	if (menu_cursor == 0)
	{
		game_end();
	}
}

if (room == Menu)
{
	audio_stop_sound(S_desert);
	audio_stop_sound(S_tundra);
	if (!audio_is_playing(S_Title))
	{
		audio_play_sound(S_Title, 1000, true);
	}
}
