/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(vk_right)){
	x += 3;
}else if(keyboard_check(vk_left)){
	x -= 3;
}

if(keyboard_check(ord("X")) && sprite_index != spr_chute){
	sprite_index = spr_chute;
	alarm[0] = 10;
}

if(keyboard_check(ord("Z")) && sprite_index != spr_soco){
	sprite_index = spr_soco;
	alarm[0] = 10;
}