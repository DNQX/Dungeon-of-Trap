if while_hit = false{
	if place_meeting(x,y + movY, Solid_Parent){
		image_speed = 1
		if movX != 0{
			sprite_index = run
			image_xscale = sign(movX)
		} else {
			sprite_index = idle
		}
	}else{
		image_speed = 0
		sprite_index = jump
		if movY < 0{
			image_index = 0
		}else{
			image_index = 1
		}
	}
	
	if movX != 0 {image_xscale = sign(movX)}
}else{
	sprite_index = hit
}