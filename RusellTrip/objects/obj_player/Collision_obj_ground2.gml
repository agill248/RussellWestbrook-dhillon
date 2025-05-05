if (place_meeting(x, y + vspeed, obj_ground2)) {
    move_contact_solid(270, vspeed); 
    vspeed = 0;
}
if (place_meeting(x + hspeed, y, obj_ground2)) {
    move_contact_solid(0, hspeed);
}
while (place_meeting(x, y + 1, obj_ground2)) {
    y -= 1;
}
vspeed = 0; 


