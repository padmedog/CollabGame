// Returns 1 if the lines intersect, otherwise 0. In addition, if the lines 
// intersect the intersection point may be stored in the floats i_x and i_y.

//forrest did not create this code

//find_intersect(line 1 x1, line 1 y1, line 1 x2, line 1 y2, line 2 x1, line 2 y1, line 2 x2, line 2 y2);
var p0_x, p0_y, p1_x, p1_y, p2_x, p2_y, p3_x, p3_y, result;
p0_x = argument0;
p0_y = argument1;
p1_x = argument2;
p1_y = argument3;
p2_x = argument4;
p2_y = argument5;
p3_x = argument6;
p3_y = argument7;
{
    var s1_x, s1_y, s2_x, s2_y;
    s1_x = p1_x - p0_x;     s1_y = p1_y - p0_y;
    s2_x = p3_x - p2_x;     s2_y = p3_y - p2_y;

    var s, t;
    s = (-s1_y * (p0_x - p2_x) + s1_x * (p0_y - p2_y)) / (-s2_x * s1_y + s1_x * s2_y);
    t = ( s2_x * (p0_y - p2_y) - s2_y * (p0_x - p2_x)) / (-s2_x * s1_y + s1_x * s2_y);

    if (s >= 0 && s <= 1 && t >= 0 && t <= 1)
    {
        // Collision detected
        result[0] = "true";
        result[1] = p0_x + (t * s1_x);
        result[2] = p0_y + (t * s1_y);
        return result
    }
    result[0] = "false";
    result[1] = -1;
    result[2] = -1;
    return result; // No collision
}
