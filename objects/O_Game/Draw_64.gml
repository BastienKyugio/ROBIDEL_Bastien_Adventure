if (room != R_MainMenu) && (instance_exists(O_Player)) && (global.gold >= 0)
{
	goldTextScale = max(goldTextScale * 0.95, 3);
	draw_set_color(c_black);
	draw_set_font(F_Menu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text_transformed(RES_W-15,12,string(global.gold) + "  ", goldTextScale, goldTextScale, 0);
	draw_set_color(c_yellow);
	draw_text_transformed(RES_W-13,10,string(global.gold) + "  ", goldTextScale, goldTextScale, 0);
	
	oreTextScale = max(oreTextScale * 0.95, 3);
	draw_set_color(c_black);
	draw_set_font(F_Menu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text_transformed(RES_W-15,52,string(global.gold) + "  ", oreTextScale, oreTextScale, 0);
	draw_set_color(c_red);
	draw_text_transformed(RES_W-15,50,string(global.gold) + "  ", oreTextScale, oreTextScale, 0);
}   