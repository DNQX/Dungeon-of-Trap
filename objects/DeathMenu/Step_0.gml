var up = keyboard_check_pressed(ord("W"))
var down = keyboard_check_pressed(ord("S"))
var select = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter)

var move = down - up

if move != 0 {
	index += move
	
	var size = array_length(menu)
	if index < 0 index = size - 1
	else if index  >= size index = 0
}

if select{
	switch(index){
		case 0:
            reset_game();  // Call a function to reset game variables
            room_goto(Room1);  // Go to the first room (Room1)
		break
		case 1:
			reset_game()
			room_goto(Main_Menu)
		break
		case 2:
			game_end()
	}
	
}

function reset_game() {
    // Reset global variables
    global.score = 0;  // Reset the score to 0
    global.current_room = Room1;  // Explicitly set the current room

    // Reset player state
    with (Player) {
        x = xstart;  // Move player to starting position
        y = ystart;
        movX = 0;    // Reset movement
        movY = 0;
    }

    // Destroy all items or collectibles
    with (Items) instance_destroy();

    // Destroy all persistent instances
    with (all) {
        if (persistent) instance_destroy();
		
	 // Reset the menu index (for any menu system)
    index = 0;
    }
}


