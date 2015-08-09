///getBarPixels(pxBar, current, max)
var pxTot = argument[0];
var num = argument[1];
var numMax = argument[2];

var p = num / numMax; //% in 0-1
var px = round(pxTot * p);

return px;