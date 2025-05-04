sprite_index = item.sprite;

if place_meeting(x, y, O_Player)
{
	item_add(item);
	instance_destroy();
	if item == global.itemList.ironOre
	{
		global.invPrice +=10;
	}
	if item == global.itemList.goldOre
	{
		global.invPrice +=20;
	}
	if item == global.itemList.lapisOre
	{
		global.invPrice +=30;
	}
	if item == global.itemList.rubyOre
	{
		global.invPrice +=40;
	}
	
}