///map_check(map, x, y, dir)
var map = argument[0];
var x1 = argument[1];
var y1 = argument[2];
var dir = argument[3];

if (dir == "up") {y1 -= 1;}
if (dir == "left") {x1 -= 1;}
if (dir == "down") {y1 += 1;}
if (dir == "right") {x1 += 1;}

var result = 0;
var strList = 0;
var str = "";

for (var i = 0; i < ds_list_size(map); i++) {
    var tmpList = string_explode(mapList[| i], ",");
    var mx = real(tmpList[| 0]);
    var my = real(tmpList[| 1]);
    
    if (mx == x1 && my == y1) {
        strList = tmpList;
        str = mapList[| i];
        break;
    }
}

if (strList) {
    var xx = -1;
    var yy = -1;
    //        T     L     B     R
    //0 1 2   3 4   5 6   7 8   9 0
    if (dir == "up") {
        xx = real(strList[| 7]);
        yy = real(strList[| 8]);
    }
    if (dir == "left") {
        xx = real(strList[| 9]);
        yy = real(strList[| 10]);
    }
    if (dir == "down") {
        xx = real(strList[| 3]);
        yy = real(strList[| 4]);
    }
    if (dir == "right") {
        xx = real(strList[| 5]);
        yy = real(strList[| 6]);
    }
    
    if (xx == -1 && yy == -1) {
        result = -1;
    }
    else {
        result = 1;
    }
}

//show_message("Map to the " + dir + " (" + string(x1) + ", " + string(y1) + ") = " + str);
//show_message("Going " + dir + " into " + string(x1) + ", " + string(y1) + " - Result: " + string(result));

return result;
