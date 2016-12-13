//purpose: draws 8 sprites around an x and y to give an "outline" effect

//argument0 = the sprite to draw
//argument1 = the subimage to draw
//argument2 = the calling instances x
//argument3 = the calling instances y
//argument4 = desired color
//argument5 = desired transparency
//argument6 = how many pixels?

var length = argument6

//above
draw_sprite_ext(argument0, argument1, argument2 , argument3 - length, 1,1,0, argument4, argument5);

//top right
draw_sprite_ext(argument0, argument1, argument2 + length, argument3 - length, 1,1,0, argument4, argument5);

//right
draw_sprite_ext(argument0, argument1, argument2 + length, argument3, 1,1,0, argument4, argument5);

//bottom right
draw_sprite_ext(argument0, argument1, argument2 + length, argument3 - length, 1,1,0, argument4, argument5);

//bottom
draw_sprite_ext(argument0, argument1, argument2, argument3 + length, 1,1,0, argument4, argument5);

//bottom left
draw_sprite_ext(argument0, argument1, argument2 - length, argument3 - length, 1,1,0, argument4, argument5);

//left
draw_sprite_ext(argument0, argument1, argument2 - length, argument3, 1,1,0, argument4, argument5);

//top left
draw_sprite_ext(argument0, argument1, argument2 - length, argument3 - length, 1,1,0, argument4, argument5);


