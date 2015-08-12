///questInLevel(key, level)
var key = argument[0];
var level = argument[1];
var result = false;

switch (key) {
    case "Valkyria's Welcome": {
        if (level >= 1) {result = true;}
        break;
    }
    case "Revenge of Jotun": {
        if (level >= 1) {result = true;}
        break;
    }
}

return result;
