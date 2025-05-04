
if (!shopOpen  && place_meeting(x, y+10, O_Player) && keyboard_check_pressed(ord("E")))
{
	
	shopOpen = true; 
	global.shop = true;
	global.gold += global.invPrice;
	global.invPrice = 0;
	O_ItemManager.inv = array_create(0);
	
}

else if (shopOpen && keyboard_check_pressed(vk_escape))
{
	shopOpen = false;
	global.shop = false;
}

if (shopOpen)
{
	
	if (keyboard_check_pressed(vk_down))
	{
		selected++;
		if (selected == itemsCount) selected = 0;
	}
	
	if (keyboard_check_pressed(vk_up))
	{
		selected --;
		if (selected <0) selected = itemsCount-1;
	}
	
	var arr = items[| selected];
	var item = arr[0];
	var price = arr[1];
	
	if keyboard_check_pressed(vk_enter) && global.gold >= price
	{
		ds_list_add(global.inv, item);
		
		global.gold -= price;
		
	}
	
	
	
	
}