////////Always solid/////////

//Horizontal
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
	}
	else
	{y -= yplus}
}

//Vertical
var vcollide;
vcollide = instance_place(x,y+vsp,obj_solid)

if (vcollide != noone)
{
	while(!place_meeting(x,y+sign(vsp),obj_solid))
	{y += sign(vsp)}
	vsp = 0
}
/////////////////////////////



//////Solid on layer 0//////////

if global.overworld_layer = 0
{
	//Horizontal
	var hcollide;
	hcollide = instance_place(x+hsp,y,obj_ow_solid_layer_0);

	if (hcollide != noone)
	{
		yplus = 0;
        
		while  (place_meeting(x+hsp,y-yplus,obj_ow_solid_layer_0) and yplus <= abs(1*hsp))
		{yplus += 1}
        
		if place_meeting(x+hsp,y-yplus,obj_ow_solid_layer_0)
		{
		    while(!place_meeting(x+sign(hsp),y,obj_ow_solid_layer_0))
		    {x += sign(hsp)}
		    hsp = 0
			speed = 0
		}
		else
		{y -= yplus}
	}

	//Vertical
	var vcollide;
	vcollide = instance_place(x,y+vsp,obj_ow_solid_layer_0)

	if (vcollide != noone)
	{
		while(!place_meeting(x,y+sign(vsp),obj_ow_solid_layer_0))
		{y += sign(vsp)}
		vsp = 0
	}

}
//////////////////////////////////

//////Solid on layer 1//////////
if global.overworld_layer = 1
{
	//Horizontal
	var hcollide;
	hcollide = instance_place(x+hsp,y,obj_ow_solid_layer_1);

	if (hcollide != noone)
	{
		yplus = 0;
        
		while  (place_meeting(x+hsp,y-yplus,obj_ow_solid_layer_1) and yplus <= abs(1*hsp))
		{yplus += 1}
        
		if place_meeting(x+hsp,y-yplus,obj_ow_solid_layer_1)
		{
		    while(!place_meeting(x+sign(hsp),y,obj_ow_solid_layer_1))
		    {x += sign(hsp)}
		    hsp = 0
			speed = 0
		}
		else
		{y -= yplus}
	}

	//Vertical
	var vcollide;
	vcollide = instance_place(x,y+vsp,obj_ow_solid_layer_1)

	if (vcollide != noone)
	{
		while(!place_meeting(x,y+sign(vsp),obj_ow_solid_layer_1))
		{y += sign(vsp)}
		vsp = 0
	}

}
//////////////////////////////////

x += hsp;
y += vsp;


