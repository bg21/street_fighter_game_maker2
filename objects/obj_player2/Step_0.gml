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



if(random(100) < 3){
	state = choose(andar, defesa, ataque);
}