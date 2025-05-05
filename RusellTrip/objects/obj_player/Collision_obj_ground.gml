if (place_meeting(x, y + vspeed, obj_ground)) {
    move_contact_solid(270, vspeed); 
    vspeed = 0;
}
if (place_meeting(x + hspeed, y, obj_ground)) {
    move_contact_solid(0, hspeed);
}
while (place_meeting(x, y + 1, obj_ground)) {
    y -= 1;
}
vspeed = 0; 
