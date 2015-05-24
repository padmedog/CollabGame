var pointlistx, pointlisty, ls, rs, langle, rangle, point_x, point_y, pointlistxsize, pointlistysize;
pointlistx = argument0;
pointlisty = argument1;
point_x = argument2;
point_y = argument3;
origin_x = argument4;
origin_y = argument5;
ls = 0;
rs = 0;
pointlistxsize = ds_list_size(pointlistx);
//pointlistysize = ds_list_size(pointlisty);
for(i = 0; i < pointlistxsize; i++)
{
    var angle = angle_difference(point_direction(point_x,point_y,origin_x,origin_y)
        ,point_direction(point_x,point_y,
            ds_list_find_index(pointlistx,i),
            ds_list_find_index(pointlisty,i)));
    if(angle < langle)
    {
        ls = i;
        langle = angle;
    }
    if(angle > rangle)
    {
        rs = i;
        rangle = angle;
    }
}
