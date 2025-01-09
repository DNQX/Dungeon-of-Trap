if (while_hit = false) {
    score -= 5  // Decrease score when player collides with the trap
    
	if (score < 0) {
        score = 0;
    }
	
	while_hit = true


    // Check if the score is zero or below
    if (score <= 0) {
        // Show the End Game screen
        room_goto(Death_Menu)  // Call a function to handle the end game screen
    }
}
