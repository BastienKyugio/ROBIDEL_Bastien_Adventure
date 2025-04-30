if(global.showInventory == true)
{
	draw_sprite_ext(S_Inventory, 0, 600, 150, (global.camera_width - 600) / 32 - 600/32, ((global.camera_width - 600) / 32 - 600/32) *2/3 + 8/64, 0, $FFFFFF & $ffffff, 0.7);

	for(i = 0; i < n_slots; i += 1) 
	{
		xx = 600 + 16 + i mod row_length * ((720-32)/3);
		yy = 150 + 16 + i div row_length * (((720*2/3)-32)/2);
		currentItem = array_get(items, i);
		currentSprite = object_get_sprite(currentItem);
	
		draw_sprite_ext(S_Inventory_Slot, 0, xx, yy, 688/32/3, 688/32/3, 0, $FFFFFF & $ffffff, 0.7);
	
		var l38883FB3_0 = false;
		l38883FB3_0 = instance_exists(currentItem);
		if(l38883FB3_0)
		{
			if(currentItem.is_unlocked == true)
			{
				draw_sprite_ext(currentSprite, 0, xx + 16, yy + 16, 688/32/3 - 1, 688/32/3 - 1, 0, $FFFFFF & $ffffff, 1);
			}
		}
	
		draw_set_colour($FFFFFFFF & $ffffff);
		var l3838FEAB_0=($FFFFFFFF >> 24);
		draw_set_alpha(l3838FEAB_0 / $ff);
	
		script_execute(Sc_Draw_Inventory_Amount);	
	}

	draw_set_font(F_Menu);

	draw_sprite_ext(S_SlotSelected, 0, 600 + 16 + selected_index mod row_length * ((720-32)/3), 150 + 16 + selected_index div row_length * (((720*2/3)-32)/2), 688/32/3, 688/32/3, 0, $FFFFFF & $ffffff, 1);
}