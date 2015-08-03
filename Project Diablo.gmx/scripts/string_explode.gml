///string_explode(str, divider)
var str = argument[0];
var divider = argument[1];
var list = ds_list_create();
var tmpStr = "";

for (var i = 1; i <= string_length(str); i++) {
    var char = string_char_at(str, i);
    
    if (char != divider) {
        tmpStr += char;
    }
    else {
        ds_list_add(list, tmpStr);
        tmpStr = "";
    }
}
ds_list_add(list, tmpStr);

return list;
