menu_x += (menu_x_target - menu_x) / menu_speed;
 if (menu_control)
 {
	 if(keyboard_check(vk_up))
	 {
		 menu_cursor++;
		 if ( menu_cursor >= menu_items) menu_cursor = 0;
	 }
 }
  if (menu_control)
 {
	 if(keyboard_check(vk_down))
	 {
		 menu_cursor--;
		 if ( menu_cursor < 0) menu_cursor = menu_items-1;
	 }
	 
	 if (keyboard_check_pressed(vk_enter))
	 {
		 if (menu_cursor == menu[2])
		{
			menu_x_target = gui_width+200;
			menu_committed = menu_cursor;
			ScreenShake(4,30);
			menu_control = false;
			room_goto(R_MainMenu);
		}
		 menu_x_target = gui_width+200;
		 menu_committed = menu_cursor;
		 ScreenShake(4,30);
		 menu_control = false;
	 }
 }
 
if (menu_x > gui_width+150) && (menu_committed != -1)
{
	switch (menu_committed)
	{
		case 2: default: SlideTransition(TRANS_MODE.NEXT); break;
		case 0: game_end(); break;
	}
}
show_debug_message(room_get_name(room));
