// Check if the warp object has valid target properties
if (other.target_room != undefined) {
    // Update respawn coordinates based on the warp's target values
    respawn_x = other.targetX;
    respawn_y = other.targetY;

    // Move to the target room
    room_goto(other.target_room);
}
