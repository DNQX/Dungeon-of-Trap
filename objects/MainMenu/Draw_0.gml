draw_set_font(Pixel_Font)
draw_set_halign(fa_center)

var gap = 50;

if state == "main" {
    // Draw the main menu
    for (var i = 0; i < array_length(menu); i++) {
        var text = menu[i];
        var color = c_white;

        if i == index {
            color = c_yellow;
        }

        draw_set_color(color);
		draw_text(room_width/2, room_height*.4 + gap*i, menu[i]);
    }
} else if state == "volume" {
    // Draw the volume adjustment menu
    draw_set_color(c_white);
    draw_text(room_width/2, room_height*.4, "Adjust Volume:");
    draw_text(room_width/2, room_height*.4 + gap *2, "Volume: " + string(round(global.music_volume * 100)) + "%");
    draw_text(room_width/2, room_height*.4 + gap *3, "Use Left/Right to adjust, Esc to return.");
}

