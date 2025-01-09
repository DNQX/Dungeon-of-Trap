movX = xx*hspd

//collision
if place_meeting(x,y + movY, Ground){
	while(!place_meeting(x,y + sign(movY), Ground)){
		y += sign(movY)
	}
	movY = 0
}

if place_meeting(x + movX,y, Ground){
	while(!place_meeting(x + sign(movX),y, Ground)){
		x += sign(movX)
	}
	movX = 0
}

if movY > 0 && position_meeting(x,y+1, Platform){
	if place_meeting(x,y + movY, Platform){
		while(!place_meeting(x,y + sign(movY), Platform)){
			y += sign(movY)
		}
		movY = 0
	}
}

x += movX
y += movY

if movY < 10{
	movY += gravitasi
}

if (while_hit) {
    // Check if the hit animation is playing
    if (sprite_index == hit && image_index == image_number - 1) {
        // Animation has ended, so respawn player
        x = respawn_x;
        y = respawn_y;
        while_hit = false;
        iframe = 60;
    } else {
        // Handle the hit state during animation
        if (iframe > 0) {
            iframe -= 1;
        } else {
            // Reset hit state and respawn
            while_hit = false;
            iframe = 60;
            x = respawn_x;
            y = respawn_y;
        }
    }
}



// Apply knockback if hit
if (while_hit) {
    // Apply knockback force
    if (iframe == 60) { // Only apply knockback at the start of the hit
        movX = hspd * -sign(xx); // Knockback direction opposite to movement
        movY = -5; // Knockback upwards
    }
}