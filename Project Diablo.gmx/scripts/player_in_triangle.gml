///player_in_triangle(x1, y1, x2, y2, x3, y3);
var x1 = argument[0];
var y1 = argument[1];
var x2 = argument[2];
var y2 = argument[3];
var x3 = argument[4];
var y3 = argument[5];

var obj = instance_find(obj_Player, 0);
var s = obj.sprite_width / 2;
var inside = noone;

/*
if (point_in_triangle(obj.x - s, obj.y, x1, y1, x2, y2, x3, y3)
|| point_in_triangle(obj.x + s, obj.y, x1, y1, x2, y2, x3, y3)
|| point_in_triangle(obj.x, obj.y - s, x1, y1, x2, y2, x3, y3)
|| point_in_triangle(obj.x, obj.y + s, x1, y1, x2, y2, x3, y3)) {
    inside = obj;
}
*/

if (point_in_triangle(obj.x, obj.y, x1, y1, x2, y2, x3, y3)) {
    inside = obj;
}

return inside;