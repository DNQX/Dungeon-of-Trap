// Default values if no Creation Code is provided
if (!variable_instance_exists(id, "shoot_interval")) shoot_interval = 60;  // Default to 60 steps
if (!variable_instance_exists(id, "projectile_speed")) projectile_speed = 5;  // Default speed

// Initialize firing alarm
alarm[0] = shoot_interval;
