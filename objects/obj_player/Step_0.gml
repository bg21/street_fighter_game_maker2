/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(vk_right)){
	x += 3;
	image_xscale = 1;
}else if(keyboard_check(vk_left)){
	x -= 3;
	image_xscale = -1;
}

if(keyboard_check(ord("X")) && sprite_index != spr_chute){
	sprite_index = spr_chute;
	alarm[0] = 10;
}

if(keyboard_check(ord("Z")) && sprite_index != spr_soco){
	sprite_index = spr_soco;
	alarm[0] = 10;
}

if(place_meeting(x, y, obj_player2)){
	if(obj_player2.sprite_index == spr_player2_soco){
		if(random(100) < 5){
			var destruiraPrimeira = instance_find(obj_life, 0);
			instance_destroy(destruiraPrimeira);
			show_debug_message("destruido");
		}
	}
}
if(instance_number(obj_life) == 0){
	room_restart();
}