//isHit is called when a player is hit in the hitbox.

if(global.playerhit == true){
    if(global.autoBomb == true){
        if(global.numBomb > 0){
            //Consume a bomb
            audio_play_sound(bombsound,10,false);
            global.numBomb -= 1;
            sprite_index = player_bomb;
            alarm[7] = 120;
            alarm[8] = 2;
            global.bombCounter = 0;
            global.playerhit = false;
        } else if(global.numBomb <= 0){
            //Player dies
            playerobj.x = 320;
            playerobj.y = 320;
            playerhitbox.x = 320;
            playerhitbox.y = 320;
            global.numlives -= 1;
            global.powerobj = global.powerobj*.9;
            global.playerhit = false;
            global.numBomb = 3;
        }
    } else if (global.autoBomb == false){
        //Player dies
        playerobj.x = 320;
        playerobj.y = 320;
        playerhitbox.x = 320;
        playerhitbox.y = 320;
        global.numlives -= 1;
        global.powerobj = global.powerobj*.9;
        global.playerhit = false;
        global.numBomb = 3;
    }
}
