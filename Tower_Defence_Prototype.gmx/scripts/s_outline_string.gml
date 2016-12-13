//purpose: draws 8 strings around an x and y to give an "outline" effect

//argument0 = the calling instances x
//argument1 = the calling instances y
//argument2 = The string to draw
//argument3 = desired color
//argument4 = desired transparency
//argument5 = how many pixels?

var my_string = argument2;

var length = argument5;



//above
draw_text_color( argument0,  argument1 - length, my_string, argument3, argument3, argument3, argument3, argument4);

//top right
draw_text_color( argument0 + length,  argument1 - length, my_string, argument3, argument3, argument3, argument3, argument4);

//right
draw_text_color( argument0 + length,  argument1, my_string, argument3, argument3, argument3, argument3, argument4);

//bottom right
draw_text_color( argument0 + length,  argument1 + length, my_string, argument3, argument3, argument3, argument3, argument4);

//bottom
draw_text_color( argument0,  argument1 - length, my_string, argument3, argument3, argument3, argument3, argument4);

//bottom left
draw_text_color( argument0 - length,  argument1 - length, my_string, argument3, argument3, argument3, argument3, argument4);

//left
draw_text_color( argument0 - length,  argument1, my_string, argument3, argument3, argument3, argument3, argument4);

//top left
draw_text_color( argument0 - length,  argument1 - length, my_string, argument3, argument3, argument3, argument3, argument4);






