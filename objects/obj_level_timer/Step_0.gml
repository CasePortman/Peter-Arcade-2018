 if global.level_timer_started = true
{
	if instance_number(obj_pickup)
	{
		if m_secs < 59
		{m_secs += 1}
		else
		{
			m_secs = 0
			
			if secs < 59
			{secs += 1}
			else
			{
				secs = 0
				mins += 1
			}
		}
	}
	else
	{
		if win = false
		{
			win = true
			
			//First set of own time
			if global.stage_info[global.stage,0] = 0
			{
				global.stage_info[global.stage,0] = 1
				global.stage_info[global.stage,1] = m_secs
				global.stage_info[global.stage,2] = secs
				global.stage_info[global.stage,3] = mins
				
				//Beat required time
				if mins < global.stage_info[global.stage,11]
				
				or (secs < global.stage_info[global.stage,10] 
				and mins <= global.stage_info[global.stage,11])
				
				or (m_secs < global.stage_info[global.stage,9]
				and secs <= global.stage_info[global.stage,10]
				and mins <= global.stage_info[global.stage,11])
				{
					global.stage_info[global.stage,5] = 1
				}

			}
			else
			{
				//Beat own best time
				if mins < global.stage_info[global.stage,3]
				
				or (secs < global.stage_info[global.stage,2] 
				and mins <= global.stage_info[global.stage,3])
				
				or (m_secs < global.stage_info[global.stage,1]
				and secs <= global.stage_info[global.stage,2]
				and mins <= global.stage_info[global.stage,3])
				{
					global.stage_info[global.stage,1] = m_secs
					global.stage_info[global.stage,2] = secs
					global.stage_info[global.stage,3] = mins
				}
				
				//Beat required time
				if mins < global.stage_info[global.stage,11]
				
				or (secs < global.stage_info[global.stage,10] 
				and mins <= global.stage_info[global.stage,11])
				
				or (m_secs < global.stage_info[global.stage,9]
				and secs <= global.stage_info[global.stage,10]
				and mins <= global.stage_info[global.stage,11])
				{global.stage_info[global.stage,5] = 1}
			}
			
			global.stage_info[global.stage,4] = 1
			
			scr_save()
			
			alarm[0] = 60
		}
	}
}