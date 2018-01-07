global.stage = 1

if !audio_is_playing(msc_machine_1)
{audio_play_sound(msc_machine_1,0,true)}
audio_sound_gain(msc_machine_1,global.music_volume,100)
audio_sound_gain(msc_ow_1,0,100)

//Camera
instance_create_depth(room_width/2,room_height/2,0,obj_camera)