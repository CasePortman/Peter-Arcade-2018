//Horizontal Collision
var hcollide;
hcollide = instance_place(x+hsp,y,obj_solid);

if (hcollide != noone)
{
    yplus = 0;
        
    while  (place_meeting(x+hsp,y-yplus,obj_solid) and yplus <= abs(1*hsp))
    {yplus += 1}
        
    if place_meeting(x+hsp,y-yplus,obj_solid)
    {
        while(!place_meeting(x+sign(hsp),y,obj_solid))
        {x += sign(hsp)}
        hsp = 0
		speed = 0
    }
    else
    {y -= yplus}
}

x += hsp;
