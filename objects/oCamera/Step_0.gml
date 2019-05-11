/// @desc update camera

//update destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
	//if (!oInventoryMenu.active)
	//{
		//xTo = 0;
		//yTo = 0;
	//}
}	

//update object position
x = x + (xTo - x) / 15;
y = y + (yTo - y) / 15;

//update camera view
camera_set_view_pos(cam, x-view_w_half, y-view_h_half);
