// Check if the player exists
if (instance_exists(Player)) {
    // Calculate the direction to the player
    var target_angle = point_direction(x, y, Player.x, Player.y);

    // Update the turret's angle to always face the player
    image_angle = target_angle;
}
