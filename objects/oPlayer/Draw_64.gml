var Space=8 
var WaterWidth=sprite_get_width(sWaterGui)
var WaterHeight=sprite_get_height(sWaterGui)
var WaterGuiX=WaterWidth/2+Space
var WaterGuiY=WaterHeight+Space
var WaterPercent=1*(CurWater/MaxWater)
draw_sprite(sWaterGui,0,WaterGuiX-WaterWidth,WaterGuiY-(WaterWidth*2)+30)
//draw_sprite_ext(sWaterGui,1,WaterGuiX,WaterGuiY,1,WaterPercent,0,c_white,1)
draw_sprite_part(sWaterGui,1,0,0,WaterWidth,WaterHeight*WaterPercent,WaterGuiX-WaterWidth/2-12,WaterGuiY-(WaterWidth*2)*WaterPercent)

//for(var i=0; i<ds_list_size(inv); i++){
//	var c = c_black;
//	draw_text_color(300, 105 + (24*i), inv[| i], c, c, c, c, 1);
//}
if Phealth = 6
{
draw_sprite(sHealth,0,75,14);
}if Phealth = 5
{
draw_sprite(sHealth,1,75,14);
}
if Phealth = 4
{
draw_sprite(sHealth,2,75,14);
}
if Phealth = 3
{
draw_sprite(sHealth,3,75,14);
}
if Phealth = 2
{
draw_sprite(sHealth,4,75,14);
}
if Phealth = 1
{
draw_sprite(sHealth,5,75,14);
}
if Phealth = 0
{
draw_sprite(sHealth,6,75,14);
}

//VICTORY!
if (won = true)
{
	draw_set_font(fTitle);
	draw_set_color(c_black);
	var xx = oPlayer.x;
	var yy = oPlayer.y;
	var txt = "YOU WIN";
	var offset = 3;
	draw_text(xx - offset, yy, txt);
	draw_text(xx + offset, yy, txt);
	draw_text(xx, yy - offset, txt);
	draw_text(xx, yy + offset, txt);
	draw_set_color(c_green);
	draw_text(xx, yy, txt);
}
