///item_image(name)
var name = argument[0];
var imageId = 0;

switch(name) {
    case "Apple": {imageId = spr_Apple; break;}
    case "Leather Chest": {imageId = spr_Chest; break;}
}

return imageId;
