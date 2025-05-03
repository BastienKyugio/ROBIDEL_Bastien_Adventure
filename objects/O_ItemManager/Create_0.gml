depth = -9999;


function create_item(_name, _desc, _spr) constructor
{
	name = _name;
	description = _desc;
	sprite = _spr;
}



global.itemList = 
	{
		
	ironOre : new create_item(
		"Iron Ore",
		"a common material",
		S_IronOre
		),
		
	goldOre : new create_item(
		"Gold Ore",
		"a better material than Iron",
		S_GoldOre
		),

	lapisOre : new create_item(
			
		"Lapis",
		"a good material",
		S_LapisOre
		),
		
	rubyOre : new create_item(
			
		"Ruby",
		"The Best Material",
		S_RubyOre
		),
	
	healthPotion : new create_item(
	
		"Health Potion",
		"Consume it and regen your health",
		S_healthPotion
		),
		
	
	}
inv = array_create(0);

selected_item = -1;

sep = 75;
spd = 16;
screen_bord = 50;
