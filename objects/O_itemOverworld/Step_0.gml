sprite_index = item.sprite;

if place_meeting(x, y, O_Player)
{
	item_add(item);
	instance_destroy();
}