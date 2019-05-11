/// @desc

bigmap = false;

fog_a = 17; // 17 (or 11)
fog_b = 13; //13 (or 12)
fog_scale = 1;

var xx, yy, f;
for (var a = 0; a < oGame.fog_a; a++) 
{
	for (var b = 0; b < oGame.fog_b; b++) 
	{
		xx = a * 512 * oGame.fog_scale;
		//xx = a * sFog.sprite_width * oGame.fog_scale;
		yy = b * 512 * oGame.fog_scale;
		f = instance_create_layer(xx, yy, "FOW", oFog);
		f.image_xscale = oGame.fog_scale;
		f.image_yscale = oGame.fog_scale;
	}
}

