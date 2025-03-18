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