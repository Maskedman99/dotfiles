conky.config = {
--Position
        alignment = 'bottom_right',
	gap_x = 30,
	gap_y = 30, 
	draw_shades = false,
        minimum_width = 200,

--Colors
        color2 = '35BF5C',       
        default_color = 'F9FAF9',

--Fonts	
        use_xft = true,
	font = 'Fira Code:size=10',
        
--Window	
	own_window = true,
        own_window_type = 'desktop',
	own_window_class = 'Calender_Conky',
	own_window_hints = 'above, undecorated, sticky',
        own_window_transparent = false,
	own_window_argb_visual = true,
	own_window_argb_value = 225,
	
        update_interval = 1.0,
	background = true,        
	cpu_avg_samples = 2, 
	double_buffer = true,
	no_buffers = true, 
	use_spacer = 'right',
}

conky.text = [[
                             ${color2}Calender${color}
${execi 3600 cal -y -m --color=always}
                               ${color2}Time${color}
${execi 1 date}
]]
