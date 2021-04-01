/// @description Insert description here
// You can write your code in this editor


if(point_distance(x, y, obj_player.x, obj_player.y) < 100){
	if(random(100) < 3){
		sprite_index = spr_player2_soco;
		alarm[0] = 10;
	}

}else{
	if(state == andar){
	
	if(x < obj_player.x){
		x += 1;
		image_xscale = 1;
	}else{
		x -= 1;
		image_xscale = -1;
	}

}
}



if(place_meeting(x, y, obj_player)){
	if(obj_player.sprite_index == spr_soco or obj_player.sprite_index == spr_chute){
		if(random(100) < 5){
			var destruiraPrimeira = instance_find(obj_life_enemy, 0);
			instance_destroy(destruiraPrimeira);
			show_debug_message("destruido");
		}
	}
}

if(instance_number(obj_life_enemy) == 0){
	room_restart();
}

