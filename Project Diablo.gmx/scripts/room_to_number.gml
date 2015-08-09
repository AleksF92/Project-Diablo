///room_to_number(room)
var rom = argument[0];
var result = -1;

switch (rom) {
    case rom_World: {result = 0; break;}
    case rom_Forest1: {result = 1; break;}
    case rom_Forest2: {result = 2; break;}
    case rom_Large: {result = 3; break;}
}

return result;
