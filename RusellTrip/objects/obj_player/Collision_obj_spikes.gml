if (place_meeting(x, y, obj_spikes)) { 
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

// Speed Lose
speed *= 0.20; 
