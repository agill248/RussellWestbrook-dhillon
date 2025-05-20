// Player Life Management & Game Over Check
if (place_meeting(x, y, obj_bigboy)) { 
    lives -= 2 // Reduce lives

    // Check if player has lives left
    if (lives > 0) {
        // Respawn player
        x = respawn_x;
        y = respawn_y;
    } else {
       if (lives <= 0) {
    // Game over logic
    show_message("Game Over!");
    
    // Restart the game
    room_goto(Menu) // This will reset the game to its initial state
	with(all) {
    instance_destroy();
}
audio_stop_all();
}
    }
	

}

