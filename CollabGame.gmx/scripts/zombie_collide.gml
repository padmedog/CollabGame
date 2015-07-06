var collision_object = argument0;
var has_collision = false;
var collision_block;
if(!place_meeting(x+xspeed,y,collision_object))
{
    x += xspeed;
    has_collision = true;
    collision_block = instance_place(x+(sprite_width*sign(xspeed)),y,collision_object);
}
if(!place_meeting(x,y+yspeed,collision_object))
{
    y += yspeed;
    has_collision = true;
    collision_block = instance_place(x,y+(sprite_height*sign(yspeed)),collision_object);
}
if(!has_collision)
    if(!place_meeting(x+xspeed,y+yspeed,collision_object))
    {
        x += xspeed;
        y += yspeed;
        has_collision = true;
        collision_block = instance_place(x+(sprite_width*sign(xspeed)),y+(sprite_height*sign(yspeed)),collision_object);
    }
if(has_collision)
{
    if(can_hit_block && collision_block != noone)
    {
        can_hit_block = false;
        alarm[0] = 8/global.timescale;
        var snd_ = choose(snd_block_hit0,snd_block_hit1,snd_block_hit2,snd_block_hit3);
        audio_play_sound(snd_,5,false);
        with(collision_block) damage += 1;
    }
}
