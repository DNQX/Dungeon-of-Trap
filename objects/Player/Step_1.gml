// Check input only if the player is not hit
if (!while_hit) {
    // Horizontal movement input (right or left)
    xx = keyboard_check(ord("D")) - keyboard_check(ord("A"))
	
	var pass_through = keyboard_check(ord("S"))
	
	if (pass_through && position_meeting(x, y + 1, Platform)) {
    y += 3; // Temporarily move the player slightly below the platform
	}
	
    // Vertical jump input
    if (keyboard_check_pressed(vk_space) && place_meeting(x, y + movY, Solid_Parent)) {
        movY = -vspd  // Apply jump speed
        // Optionally decrement jump count if needed (e.g., jump -= 1)
		
    }
} else {
    // Disable movement input while hit
    xx = 0  // No horizontal input
}

if (while_hit) {
    if (iframe == 60) { // Apply knockback at the start of the hit
        movX = hspd * -sign(xx);  // Horizontal knockback
        movY = -5;               // Upward knockback
    }
    xx = 0;  // Disable horizontal input
}

