// PURPOSE:
//   fade in and out an object depending on if the cursor is hovering

// ARGUMENTS:
//   0: x1 boundary (x1)
//   1: y1 boundary (y1)
//   2: x2 boundary (x2)
//   3: y2 boundary (y2)

//   4: variable that stores the alpha (you need to create it and store it on the object!)
//   5: target fade in alpha
//   6: target fade out alpha
//   7: speed

// RETURNS:
//   the returned value of the argument 4 in which you store your alpha. 


//fade in bar:
if ( (mouse_x > argument0) && (mouse_x < argument2) && (mouse_y > argument1) && (mouse_y < argument3) ) {
    argument4 = ease(argument4, argument5, argument7)
    
}
//fade out bar:
else {
    argument4 = ease(argument4, argument6, argument7)
}

return argument4;
