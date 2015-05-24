var _det, _pos,
//_pos[0] = -1;
//_pos[1] = -1;
det = A1*B2 - A2*B1
if(det == 0)
{
    //Lines are parallel
    return "-1";
}
else
{
    _pos[0] = (B2*C1 - B1*C2)/det
    _pos[1] = (A1*C2 - A2*C1)/det
}
return _pos;
