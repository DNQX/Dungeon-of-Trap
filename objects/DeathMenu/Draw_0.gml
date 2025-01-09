draw_set_halign(fa_center)
draw_set_font(Pixel_Font)

var gap = 50;

draw_set_color(c_red);  // Set color for the message, you can use any color
draw_text(room_width / 2, room_height * 0.3, "You're Dead");  // Position it near the top

for (var i = 0; i < array_length(menu); ++i) {
	draw_set_color(c_white);
	if i == index draw_set_color(c_blue);
	
    draw_text(room_width/2, room_height*.4 + gap*i, menu[i]);
}