///item_info(name)
var name = argument[0];
var p = instance_find(obj_Player, 0);
var result = "";

switch(name) {
    case "Apple": {
        if (p.hp < p.hpMax || true) {
            p.hp += 50;
            result = "Consumed";
        }
        else {
            result = "Failed";
        }
        break;
    }
}

return result;