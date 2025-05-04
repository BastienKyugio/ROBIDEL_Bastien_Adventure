draw_set_font(F_Menu);



for(var i = 0 ;i<ds_list_size(global.inv); i++)
{
	var _xx = screen_bord;
	var _yy = screen_bord;
	var _col = c_black;

	
	draw_text(_xx +50, _yy +650, global.inv[| i]);
}