///rollChance(percent)
var req = argument[0];
var rMax = 100;
var tot = req * rMax;
while (tot < 100) {
    rMax *= 10;
    tot *= 10;
}

var roll = randomRound(1, rMax);
var result = false;
if (roll <= req) {
    result = true;
}

//show_message("Roll " + string(req) + "%: " + string(roll) + " (1 / " + string(rMax) + ")");
return result;
