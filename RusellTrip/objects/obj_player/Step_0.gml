var playerSpeed = slowDown ? 2 : 5; 
// Horizontal Movement
if (keyboard_check(ord("A"))) { 
    motion_set(180, playerSpeed); 
    sprite_index = spr_playerL;
	facing_direction = 180; // Left
} 
else if (keyboard_check(ord("D"))) { 
    motion_set(0, playerSpeed);
    sprite_index = spr_playerR;
	facing_direction = 0; // right
}

// Vertical Movement
else if (keyboard_check(ord("W"))) { 
    motion_set(90, playerSpeed);
	facing_direction = 90; // Left
}
else if (keyboard_check(ord("S"))) { 
    motion_set(270, playerSpeed);
	facing_direction = 360; // Left
}

// If no key is pressed
else {
    motion_set(0, 0);
}

// Jumping

if (place_free(x,y+1)) gravity = 1;
else gravity = 0;

// Player Life Management & Game Over Check
if (place_meeting(x, y, obj_enemy)) { 
    lives -= 1; // Reduce lives

    // Check if player has lives left
    if (lives > 0) {
        // Respawn player
        x = respawn_x;
        y = respawn_y;
    } else {
        game_end(); // End the game if lives run out
    }
	

}

// Shooting
if (keyboard_check_pressed(vk_space)) {
    var basketball = instance_create_layer(x, y, "Instances", obj_basketball);
    basketball.direction = facing_direction;
    basketball.speed = 10;
}


