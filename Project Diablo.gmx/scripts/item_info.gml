///item_info(name)
var name = argument[0];
var result = ds_list_create();
var maxStack = 0;
var quality = "";
var description = "";

switch(name) {
    case "Apple": {
        maxStack = 5;
        quality = "Normal";
        desc = "Eat to restore#50 health.";
        break;
    }
    case "Leather Chest": {
        maxStack = 1;
        quality = "Uncommon";
        desc = "14 Health#7 Armor##3 Intellect";
        break;
    }
}

ds_list_add(result, maxStack);
ds_list_add(result, quality);
ds_list_add(result, desc);

return result;
