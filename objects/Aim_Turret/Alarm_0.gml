// Fire a projectile
var barrel_length = 3;  // Distance from the turret's center to the barrel end
var proj_x = x + lengthdir_x(barrel_length, image_angle);
var proj_y = y + lengthdir_y(barrel_length, image_angle);

// Create the projectile
var proj = instance_create_layer(proj_x, proj_y, "Bullets", Bullet_Trap);

// Set projectile direction and speed using instance-specific variables
proj.hspeed = lengthdir_x(projectile_speed, image_angle);
proj.vspeed = lengthdir_y(projectile_speed, image_angle);

// Reset alarm using the instance's unique interval
alarm[0] = shoot_interval;
