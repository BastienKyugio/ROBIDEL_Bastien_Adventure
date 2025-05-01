depth = -9999;


function create_item(_name, _desc, _spr, _candrop, _effect) constructor
{
	name = _name;
	description = _desc;
	sprite = _spr;
	can_drop = _candrop;
	effect = _effect;
}



global.itemList = 
	{
		
	ironOre : new create_item(
		"Iron Ore",
		"a common material",
		S_IronOre,
		true,
		),
		
	goldOre : new create_item(
		"Gold Ore",
		"a better material than Iron",
		S_GoldOre,
		true,
		),

	lapisOre : new create_item(
			
		"Lapis",
		"a good material",
		S_LapisOre,
		true,
		),
		
	rubyOre : new create_item(
			
		"Ruby",
		"The Best Material",
		S_RubyOre,
		true,
		),
	
	healthPotion : new create_item(
	
		"Health Potion",
		"Consume it and regen your health",
		S_healthPotion,
		false,
		function()
		{
			O_Player.hp +=10;
			array_delete(inv, selected_item, 1);
		}
		),
		
	
	}
inv = array_create(0);

selected_item = -1;

sep = 50;
spd = 16;
screen_bord = 50;
