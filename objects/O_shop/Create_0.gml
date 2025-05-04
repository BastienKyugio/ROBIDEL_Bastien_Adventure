shopOpen = false;
global.shop = false;

selected = 0;


items = ds_list_create();

ds_list_add(items, ["Iron_Pickaxe",	80, "A Normal Pickaxe"]);
ds_list_add(items, ["Gold_Pickaxe",	150, "A Good Pickaxe"]);
ds_list_add(items, ["Lapis_Pickaxe",	250, "An Amazing Pickaxe !"]);
ds_list_add(items, ["Ruby_Pickaxe",	500, "The Best Pickaxe !!!"]);

itemsCount = ds_list_size(items);

guiWidth = display_get_gui_width()
guiHeight = display_get_gui_height();

menuWidth = guiWidth * 0.3;
menuMargin = guiWidth * 0.1;

previewWidth = (guiWidth - (menuWidth+menuMargin));
