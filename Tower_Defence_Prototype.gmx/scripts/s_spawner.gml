
//argument0: the x of the object to spawn from
//argument1: the y of the object to spawn from
//argument2: max_health
//argument3: my_move_speed
//argument4: my_sprite
//argument5: sprite_scale
//argument6: my_color
//argument7: my_damage
//argument8: move_distance
//argument9: how much this object is worth when destroyed
//argument10: how much regeneration ability this unit has
//argument11: how much base armor this unit has
//argument12: sheilds other units? (true or false)
//argument13: amount healed each alarm (0 if not a healer)
//argument14: sprinter amount (0 for not a sprinter)

var a = instance_create(argument0 + (choose(-16,-8,0,8,16)), argument1 + (sprite_get_height(spr_blue_castle)/2) + 16 + (choose(0,4,8)), obj_enemy);

//stores the arguments into the object, like a creation code
a.max_health = argument2;
a.my_move_speed = argument3;
a.my_sprite = argument4;
a.sprite_scale = argument5;
a.my_color = argument6;
a.my_starting_color = argument6
a.my_damage = argument7;
a.move_distance = argument8;
a.gold_reward = argument9;

//regen
a.regen = argument10;
a.base_regen = argument10; //because regen is altered, we need an initial heal amount
a.my_health = a.max_health; //set the units health to be full
//even if the unit doesn't heal, set it's heal alarm.
a.regen_alarm = 60*2;
a.alarm[1] = a.regen_alarm;


//armor
a.armor = argument11;
a.base_armor = argument11; //because armor is altered, we need an initial armor amount

//shielder
a.shielder = argument12;
if (a.shielder) a.alarm[2] = shield_check_alarm;
a.check_shield = false;
a.allow_draw_shield = false;

//healer
a.healer_amount = argument13;
a.allow_draw_heal = false;
if (a.healer_amount > 0) a.alarm[2] = shield_check_alarm;

//sprinter
a.sprinter_amount = 0; //off to begin
a.sprinter_amount_on = argument14;
a.sprinter_amount_off = 0;
if (argument14 > 0) a.alarm[3] = sprinter_alarm_on;
a.draw_sprint_icon = false;
a.sprinter_glow_alpha = 0;

//hoard
a.hoard_amount_per_unit = argument15;
if (a.hoard_amount_per_unit > 0) a.alarm[2] = shield_check_alarm;
a.hoard_amount = 0;
a.hoard_counter = 0;
a.allow_draw_hoard = false;




//treasure enemy:
a.create_indicator = false;
a.is_treasure_enemy = false; //later changed to true after created if needed.
a.indicator_destroyed = false;

//stun
a.stun_duration = 0;


//react with fire
a.fire_check_alarm = 30;
a.alarm[6] = a.fire_check_alarm;

a.fire_alarm_max = a.fire_check_alarm*15; //stays on fire for this long
a.fire_alarm = 0;
a.fire_color_amount = 0;

a.fire_size = 0;


//check if stuck
a.is_stuck = false;
a.alarm[6] = 60*3;
a.is_stuck_alarm_check = 60*2;
a.x_previous = x; //initialize
a.y_previous = y;
a.draw_exclamation = false;
a.check_stuck_again = false;


//set priority for units ahead in the path sequence:
a.tile_currently_on = 0; //initiation


//used for oil_tower to shoot ahead of the enemy.
a.store_path_x = a.x;
a.store_path_y = a.y;

a.is_dead = false;

//ID storage and stuff!!!!
global.enemy_id[global.map_cur_enemy] = a.id;
a.local_id = global.map_cur_enemy; //could be useful to have a local id as well. 

global.enemy_id_exists[global.map_cur_enemy] = true; //the flag array for each enemy existing is set to true. (set to false on death). 

global.map_cur_enemy++; //next enemy will be my_id + 1; 
global.map_total_enemies_screen++; //total enemies on the screen now. 


return a;
