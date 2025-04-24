press_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
press_left = keyboard_check(vk_left) || keyboard_check(ord("Q"));
press_up =  keyboard_check(vk_up) || keyboard_check(ord("Z"));
press_down =  keyboard_check(vk_down) || keyboard_check(ord("S"));

var move_x = press_right - press_left;
hspd = move_x * walkspd;
var move_y = press_down - press_up ;
vspd = move_y * walkspd;


x = x + hspd;
y = y + vspd;

if (place_meeting(x + hspd, y , O_Wall))
{
	while (!place_meeting(x + sign(hspd), y, O_Wall))
	{
		x = x + sign(hspd);
	}
	hspd = 0;
}

if (place_meeting(x, y + vspd, O_Wall))
{
	while (!place_meeting(x, y + sign(vspd), O_Wall))
	{
		y = y + sign(vspd);
	}
	vspd = 0;
}

if (vspd == 0 and hspd == 0 and global.isMining == false)
{
	sprite_index = S_PlayerIdle;
}
else
{
	if (vspd == 0 and hspd !=0 and global.isMining == false)
	{
		if (hspd < 0)
		{
			sprite_index = S_PlayerRunLeft;
		}
		else if (hspd > 0)
		{
			sprite_index = S_PlayerRunRight;
		}
	}
	else if (vspd != 0 )
	{
		if (vspd < 0 and global.isMining == false)
		{
			sprite_index = S_PlayerRunFront;
		}
		else if (vspd > 0 and global.isMining == false)
		{
			sprite_index = S_PlayerRunBehind;
		}
	}
}
