if (direction == 0) {
   direction = 180; //move upwards
}
else if (direction == 180) {
   direction = 0; //move downwards
}
alarm[0] = 2 * speed; //reactivate the alarm, so that the instance can change direction again after two seconds