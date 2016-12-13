//purpose ---> this function abstracts code by letting us spawn enemies by passing in only the name and the coordinates to spawn it. 

//argument0: x of the object you will spawn it from
//argument1: y of the object you will spawn it from
//argument2: pass in the unique name of any enemies described below:

var s_max_health;
var s_my_move_speed;
var s_my_sprite;
var s_sprite_scale;
var s_my_color;
var s_my_damage;
var s_move_distance;
var s_gold_reward;
var s_regen;
var s_armor;
var s_shielder;
var s_healer_amount;
var s_sprinter_amount;
var s_hoard_amount_per_unit;


switch (argument2) {

    case weak: //these are the names of the enemies to pass in
        s_max_health = 80;
        s_my_move_speed = 25;
        s_my_sprite = spr_dude; //these are information bits about each enemy type defined
        s_sprite_scale = 1;
        s_my_color = c_white;
        s_my_damage = 10;
        s_move_distance = 25;
        s_gold_reward = 6;
        s_regen = 0;
        s_armor = 0;
        s_shielder = false;
        s_healer_amount = 0;
        s_sprinter_amount = 0;
        s_hoard_amount_per_unit = 0;
        break;
        
    case normal_big:
        s_max_health = 200;
        s_my_move_speed = 45;
        s_my_sprite = spr_dude;
        s_sprite_scale = 2;
        s_my_color = c_white;
        s_my_damage = 20;
        s_move_distance = 25;
        s_gold_reward = 15;
        s_regen = 0;
        s_armor = 0;
        s_shielder = false;
        s_healer_amount = 0;
        s_sprinter_amount = 0;
        s_hoard_amount_per_unit = 0;
        break;
        
    case normal_fast:
        s_max_health = 35;
        s_my_move_speed = 10;
        s_my_sprite = spr_dude;
        s_sprite_scale = 0.75;
        s_my_color = c_blue;
        s_my_damage = 8;
        s_move_distance = 15;
        s_gold_reward = 4;
        s_regen = 0;
        s_armor = 0;
        s_shielder = false;
        s_healer_amount = 0;
        s_sprinter_amount = 0;
        s_hoard_amount_per_unit = 0;
        break;
        
    case normal:
        s_max_health = 120;
        s_my_move_speed = 25;
        s_my_sprite = spr_dude; 
        s_sprite_scale = 1;
        s_my_color = c_ltgray;
        s_my_damage = 10;
        s_move_distance = 25;
        s_gold_reward = 8;
        s_regen = 0;
        s_armor = 0;
        s_shielder = false;
        s_healer_amount = 0;
        s_sprinter_amount = 0;
        s_hoard_amount_per_unit = 0;
        break;
        
    case normal_regen:
        s_max_health = 220;
        s_my_move_speed = 25;
        s_my_sprite = spr_dude; 
        s_sprite_scale = 1;
        s_my_color = c_lime;
        s_my_damage = 10;
        s_move_distance = 25;
        s_gold_reward = 12;
        s_regen = 12;
        s_armor = 0;
        s_shielder = false;
        s_healer_amount = 0;
        s_sprinter_amount = 0;
        s_hoard_amount_per_unit = 0;
        break;
        
    case normal_armored:
        s_max_health = 120;
        s_my_move_speed = 25;
        s_my_sprite = spr_dude; 
        s_sprite_scale = 1;
        s_my_color = c_black;
        s_my_damage = 10;
        s_move_distance = 25;
        s_gold_reward = 12;
        s_regen = 0;
        s_armor = 10;
        s_shielder = false;
        s_healer_amount = 0;
        s_sprinter_amount = 0;
        s_hoard_amount_per_unit = 0;
        break;
        
    case normal_shielder:
        s_max_health = 120;
        s_my_move_speed = 45;
        s_my_sprite = spr_dude; 
        s_sprite_scale = 2;
        s_my_color = c_orange;
        s_my_damage = 10;
        s_move_distance = 25;
        s_gold_reward = 20;
        s_regen = 0;
        s_armor = 0;
        s_shielder = true;
        s_healer_amount = 0;
        s_sprinter_amount = 0;
        s_hoard_amount_per_unit = 0;
        break;
        
    case normal_healer:
        s_max_health = 120;
        s_my_move_speed = 45;
        s_my_sprite = spr_dude; 
        s_sprite_scale = 2;
        s_my_color = c_orange;
        s_my_damage = 10;
        s_move_distance = 25;
        s_gold_reward = 20;
        s_regen = 0;
        s_armor = 0;
        s_shielder = false;
        s_healer_amount = 15;
        s_sprinter_amount = 0;
        s_hoard_amount_per_unit = 0;
        break;
        
    case normal_sprinter:
        s_max_health = 120;
        s_my_move_speed = 25;
        s_my_sprite = spr_dude; 
        s_sprite_scale = 1;
        s_my_color = c_aqua;
        s_my_damage = 10;
        s_move_distance = 25;
        s_gold_reward = 15;
        s_regen = 0;
        s_armor = 0;
        s_shielder = false;
        s_healer_amount = 0;
        s_sprinter_amount = 6;
        s_hoard_amount_per_unit = 0;
        break;
        
    case normal_hoard:
        s_max_health = 120;
        s_my_move_speed = 25;
        s_my_sprite = spr_dude; 
        s_sprite_scale = 1;
        s_my_color = c_red;
        s_my_damage = 10;
        s_move_distance = 25;
        s_gold_reward = 12;
        s_regen = 0;
        s_armor = 0;
        s_shielder = false;
        s_healer_amount = 0;
        s_sprinter_amount = 0;
        s_hoard_amount_per_unit = 2;
        break;
        
    case treasure_monster:
        s_max_health = 120*(global.wave/2);
        s_my_move_speed = 15;
        s_my_sprite = spr_rocks; 
        s_sprite_scale = 0.6;
        s_my_color = c_white;
        s_my_damage = 10;
        s_move_distance = 25;
        s_gold_reward = 10 + global.wave*15 + global.wave*(choose(1,2,4,10,20,30));
        s_regen = choose(0, 0, 2);
        s_armor = global.wave;
        s_shielder = false;
        s_healer_amount = 0;
        s_sprinter_amount = choose(0, 0, 2);
        s_hoard_amount_per_unit = choose(0, 0, 2);
        break;
        
    case carson_monster:
        s_max_health = 270;
        s_my_move_speed = 25;
        s_my_sprite = spr_carson_monster;
        s_sprite_scale = 2;
        s_my_color = choose(c_white, c_white, c_white, c_red, c_green, c_blue);
        s_my_damage = 1;
        s_move_distance = 35;
        s_gold_reward = 30;
        s_regen = 0;
        s_armor = 2;
        s_shielder = false;
        s_healer_amount = 0;
        s_sprinter_amount = 0;
        s_hoard_amount_per_unit = 1;
        break;
        
        
        
        
        
}


b = s_spawner(argument0, argument1, s_max_health, s_my_move_speed, s_my_sprite, s_sprite_scale, s_my_color, s_my_damage, s_move_distance,s_gold_reward,s_regen, s_armor, s_shielder, s_healer_amount, s_sprinter_amount, s_hoard_amount_per_unit);

b.alarm[0] = col_check; //this alarm is the collision checking alarm. 

b.starting_position_x = b.x;
b.starting_position_y = b.y;

b.my_path = instance_create(b.x,b.y, obj_pathfind);
b.killed_by_tower = false;
b.looking_for_fight = true;
b.fighting = false;


return b; //passes the pointer to the enemy created. 
