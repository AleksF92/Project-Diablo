///number_to_room(n)
var num = argument[0];
var result = -1;

switch (num) {
    case 0: {result = rom_World; break;}
    case 1: {result = rom_Forest1; break;}
    case 2: {result = rom_Forest2; break;}
    case 3: {result = rom_Large; break;}
}

return result;
