///questInfo(list, key, level)
var list = argument[0];
var key = argument[1];
var level = argument[2];
var value = list[? key];
var result = ds_list_create();

//Check level
var lvlCheck = false;
var status = "quest";
var desc = "";

switch (key) {
    case "Valkyria's Welcome": {
        if (level >= 1) {lvlCheck = true;}
        if (value) {
            status = "done";
        }
        else {
            desc = "Talk to Valkyria";
        }
        break;
    }
    case "Revenge of Jotun": {
        if (level >= 1) {lvlCheck = true;}
        if (value > -1 && value < 6) {
            status = "working";
            desc = "Bandit Scrubs killed: " + string(value) + " / 5";
        }
        else if (value == 6) {
            status = "done";
        }
        else {
            desc = "Find Jotun";
        }
        break;
    }
}

ds_list_add(result, lvlCheck);
ds_list_add(result, status);
ds_list_add(result, desc);

return result;
