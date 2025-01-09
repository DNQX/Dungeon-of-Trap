if state == "main" {
    // Main menu navigation
    var up = keyboard_check_pressed(ord("W"));
    var down = keyboard_check_pressed(ord("S"));
    var select = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter);

    var move = down - up;

    if move != 0 {
        index += move;

        var size = array_length(menu);
        if index < 0 index = size - 1;
        else if index >= size index = 0;
    }

    if select {
        switch (index) {
            case 0: // Start Game
                room_goto_next();
            break;
			
            case 1: // Adjust Volume
                state = "volume"; // Enter volume adjustment mode
            break;
			
			case 2: // Exit Game
                game_end();
            break;
        }
    }
} else if state == "volume" {
    // Volume adjustment navigation
    var left = keyboard_check_pressed(ord("A"));
    var right = keyboard_check_pressed(ord("D"));
    var back = keyboard_check_pressed(vk_escape);

    if left {
        if global.music_volume > 0 {
            global.music_volume -= 0.1;
            if global.music_volume < 0 global.music_volume = 0;
            audio_master_gain(global.music_volume);
        }
    }

    if right {
        if global.music_volume < 1 {
            global.music_volume += 0.1;
            if global.music_volume > 1 global.music_volume = 1;
            audio_master_gain(global.music_volume);
        }
    }

    if back {
        state = "main"; // Return to main menu
    }
}
