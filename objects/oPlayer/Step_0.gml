

if (room == Overworld)
{
	if (oGame.bigmap)
	{
		exit;
	}
	if (oInventoryMenu.active) 
	{
		exit;
	}
}

/// @desc Movement
key_left = keyboard_check_released(vk_left) or keyboard_check_pressed(ord("A"));
key_right = keyboard_check_released(vk_right) or keyboard_check_pressed(ord("D"));
key_up = keyboard_check_released(vk_up) or keyboard_check_pressed(ord("W"));
key_down = keyboard_check_released(vk_down) or keyboard_check_pressed(ord("S"));

var movex = key_right - key_left;
var movey = key_down - key_up;

	hsp = movex * walksp;
	vsp = movey * walksp;

if (global.playerdelay = 0)
{
	//animation go
	//if (!key_right = false)
	//{
		//sprite_index = sPlayerMR;
		//image_speed = imageD;
	//}
	
	//if (!key_left = false)
	//{
		//sprite_index = sPlayerML;
		//image_speed = imageD;
	//}
	
	//if (!key_down = false)
	//{
		//sprite_index = sPlayerMD;
		//image_speed = imageD;
	//}
	
	//if (!key_up = false)
	//{
		//sprite_index = sPlayerMU;
		//image_speed = imageD;
	//}
	
	
	//horizontal collision
	if (place_meeting(x + hsp, y, oWall))
	{
		hsp = 0;
		if (place_meeting(x + hsp, y, oEnemy))
		{
		Phealth -= 1;
		}
	}
	x = x + hsp;

	//vertical collision
	if (place_meeting(x, y + vsp, oWall))
	{
		vsp = 0;
		if (place_meeting(x, y + vsp, oEnemy))
		{
			Phealth -= 1;
		}
	}
	y = y + vsp;
	
	global.playerdelay = 1;
}

if (global.playerdelay != 0)
{
	global.playerdelay -= 1;
}	
	
if(CurWater=0) 
{
	Phealth -= 1;
	CurWater = 10;
}

if (Phealth < 1)
{
	game_restart()
}	
	
//Decrease Water level
if(CurWater>0)
{
	CurWater-= .5
}

var my_speed = 30;

// If you do not want to move when big_map is
// show, then do something like this.
// Note: You'll need to add this conditional
// to all of your enemies/timers.
//if (!oGame.bigmap) 
//{
	//if (keyboard_check(vk_up)) 
	//{
		//y = y - my_speed;
	//}
	//if (keyboard_check(vk_down)) 
	//{
		//y = y + my_speed;
	//}
	//if (keyboard_check(vk_left)) 
	//{
		//x = x - my_speed;
	//}
	//if (keyboard_check(vk_right))
	//{
		//x = x + my_speed;
	//}
//}

VisitFog(x, y);

if ((!instance_exists(oFog)) and (room == Overworld))
{
	room_goto(IceWorld);
}

if ((!instance_exists(oFog)) and (room == IceWorld)) 
{
	won = true;
}
