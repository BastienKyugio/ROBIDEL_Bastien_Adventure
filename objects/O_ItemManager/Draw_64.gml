draw_set_font(F_Inventory);

for (var i = 0; i < array_length(inv); i++)
	{
	var _xx = screen_bord;
	var _yy = screen_bord;
	var _sep = 16;
	

	draw_sprite(inv[i].sprite, 0, RES_W-16, 50 + _sep * i );	

	draw_text_transformed(RES_W-15,52,string(inv[i]) + "  ", 1, 1, 0);
	draw_text_transformed(RES_W-15,50,string(inv[i]) + "  ", 1, 1, 0);
	}
	