/// @description Insert description here
// You can write your code in this editor

ysp+=0.1 //gravity
xsp=0 //character stays still when no button pressed

if keyboard_check(vk_left)
{
	xsp=-1.5
	sprite_index = sKyle_run;
	image_xscale = -1;

}

if keyboard_check(vk_right) 
{
		xsp=+1.5
		sprite_index = sKyle_run;
		image_xscale = 1;
}

if place_meeting(x,y+1,oSolid)
{
	ysp=0
	if keyboard_check(vk_up)
	{
		ysp=-2
	}
}

move_and_collide(xsp,ysp,oSolid)

//spike and flag collisions

if place_meeting(x,y,oBurger)
{
		room_goto_next()
}

if place_meeting(x,y,oSpike)
{
		room_restart()
}