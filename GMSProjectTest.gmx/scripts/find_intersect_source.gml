//find_intersect_source(polygon x1, polygon y1, polygon x2, polygon y2);
var _pointlistx1, _pointlistx2, _pointlisty1, _pointlisty2,
    _origin_x1, _origin_x2, _origin_y1, _origin_y2,
    _pointlistx1size, _pointlistx2size, _pointlisty1size, _pointlisty2size
    _objectside0_x1, _objectside0_y1, _objectside1_x1, _objectside1_y1
    _objectside0_x2, _objectside0_y2, _objectside1_x2, _objectside1_y2
_pointlistx1 = argument0;
_pointlisty1 = argument1;
_pointlistx2 = argument2;
_pointlisty2 = argument3;
_pointlistx1size = ds_list_size(_pointlistx1);
//_pointlisty1size = ds_list_size(_pointlisty1);
_pointlistx2size = ds_list_size(_pointlistx2);
//_pointlisty2size = ds_list_size(_pointlisty2);
var temp_amount = 0;
var temp_amount_2 = 0;
for(i = 0; i < _pointlistx1size; i++)
{
    temp_amount += ds_list_find_index(_pointlistx1,i);
    temp_amount_2 += ds_list_find_index(_pointlisty1,i);
}
_origin_x1 = temp_amount/_pointlistx1size;
_origin_y1 = temp_amount_2/_pointlistx1size;
temp_amount = 0;
temp_amount_2 = 0;
for(i = 0; i < _pointlistx2size; i++)
{
    temp_amount += ds_list_find_index(_pointlistx2,i);
    temp_amount_2 += ds_list_find_index(_pointlisty2,i);
}
_origin_x2 = temp_amount/_pointlistx2size;
_origin_y2 = temp_amount_2/_pointlistx2size;
var _tempsides = find_sides(_pointlistx1,_pointlisty1,origin_x2,origin_y2,_origin_x1,_origin_y1);
_objectside0_x1 = _tempsides[0];
_objectside0_y1 = _tempsides[1];
_objectside1_x1 = _tempsides[2];
_objectside1_y1 = _tempsides[3];
_tempsides = find_sides(_pointlistx2,_pointlisty2,origin_x1,origin_y1,_origin_x2,_origin_y2);
_objectside0_x2 = _tempsides[0];
_objectside0_y2 = _tempsides[1];
_objectside1_x2 = _tempsides[2];
_objectside1_y2 = _tempsides[3];
var _intersect = find_intersect(_objectside0_x1,_objectside0_y1,_objectside1_x2,objectside1_y2,_objectside1_x1,_objectside1_y1,_objectside0_x2,_objectside0_y2);
var _inters;
_inters = _intersect[1];
_inters = _intersect[2];
return _inters;
