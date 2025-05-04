if mouse_check_button(mb_left) && ds_list_size(global.inv) > 3
{
	if (y < O_Player.y and O_Player.x <= x + 5 or O_Player.x >= x - 5)
	{
		global.isMining = true;
		O_Player.sprite_index = S_PlayerMineFront;
		global.isMining = false;
		instance_destroy()

	}
	else if ( y > O_Player.y and O_Player.x <= x + 5 or O_Player.x >= x - 5)
	{
		global.isMining= true;
		O_Player.sprite_index = S_PlayerMineBehind;
		global.isMining = false;
		instance_destroy()
	}
	
}