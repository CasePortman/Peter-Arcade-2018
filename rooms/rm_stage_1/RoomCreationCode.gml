global.stage = 1

audio_sound_gain(msc_machine_1,0.5,100)
audio_sound_gain(msc_ow_1,0,100)

//Camera
instance_create_depth(room_width/2,room_height/2,0,obj_camera)