//Vertical collision
var vcollide;
vcollide = instance_place(x,y+vsp,obj_solid)

if (vcollide != noone)
{
    while(!place_meeting(x,y+sign(vsp),obj_solid))
    {y += sign(vsp)}
    vsp = 0
	grounded = true
}
else
{
	grounded = false
}

var vcollide2;
vcollide2 = instance_place(x,y+vsp,obj_jumpthrough_block)

if (vcollide2) and vsp > 0  
{
    if (!place_meeting(x,y,obj_jumpthrough_block))
    {
        while(!place_meeting(x,y+sign(vsp),obj_jumpthrough_block))
        {y += 1}
        grounded = true
        vsp = 0
    }
}
else
{grounded = false}

y += vsp


if place_meeting(x,y+1,obj_solid) and !place_meeting(x,y,obj_jumpthrough_block) and !place_meeting(x,y,obj_moving_platform)
{grounded = true}
else if place_meeting(x,y+1,obj_jumpthrough_block) and !place_meeting(x,y,obj_jumpthrough_block)
{grounded = true}
else if place_meeting(x,y+1,obj_solid) and place_meeting(x,y,obj_jumpthrough_block)
{grounded = true}
else
{grounded = false}
