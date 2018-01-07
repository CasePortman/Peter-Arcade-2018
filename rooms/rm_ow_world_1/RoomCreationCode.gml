global.world = 1
global.stage = 3

audio_play_sound(msc_ow_1,1,true)
audio_play_sound(msc_machine_1,1,true)

audio_sound_gain(msc_machine_1,0,0)
audio_sound_gain(msc_ow_1,global.music_volume,100)