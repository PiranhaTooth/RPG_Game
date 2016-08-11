up = keyboard_check(ord('W'));
left = keyboard_check(ord('A'));
down = keyboard_check(ord('S'));
right = keyboard_check(ord('D'));

var pressed_up = 0;
var pressed_left = 0;
var pressed_right = 0;
var pressed_down = 0;

my_speed = 1.5;

if up
{
    sprite_index = spr_player_up;
    y -= my_speed; 
    if keyboard_check_released(ord('W'))
    {   
       // pressed_up = 1; 
        sprite_index = spr_player_idle_up; 
    }  
}

if left
{
    sprite_index = spr_player_left;
    x -= my_speed;
    if keyboard_check_released(ord('A'))
    {   
        pressed_left = 1;  
    }  
}

if down
{
    sprite_index = spr_player_down;
    y += my_speed;
    if keyboard_check_released(ord('S'))
    {   
        pressed_down = 1;  
    }  
}

if right
{
    sprite_index = spr_player_right;
    x += my_speed;
    if keyboard_check_released(ord('D'))
    {   
        pressed_right = 1;  
    }  
}

//idle animation
//if pressed_up = 1 
//{
//    sprite_index = spr_player_idle_up;
//    pressed_up = 0
//}

if pressed_left = 1 
{
    sprite_index = spr_player_idle_left;
    pressed_left = 0
}

if pressed_down = 1 
{
    sprite_index = spr_player_idle_down;
    pressed_down = 0
}

if pressed_right = 1 
{
    sprite_index = spr_player_idle_right;
    pressed_right = 0
}
