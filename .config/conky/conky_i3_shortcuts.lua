conky.config = {
--Position
        alignment = 'middle_middle',
	gap_x = 10,
	gap_y = 10, 
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
        own_window_type = 'override',
        own_window_transparent = false,
	own_window_argb_visual = true,
	own_window_argb_value = 150,
	
        update_interval = 2.0,
	background = true,        
	cpu_avg_samples = 2, 
	double_buffer = true,
	no_buffers = true, 
	use_spacer = 'right',
}

conky.text = [[
                  ${color2}i3${color}

${color2}new terminal - ${color}mod+Enter
${color2}toggle i3bar - ${color}mod+m
${color2}new terminal - ${color}mod+Enter
${color2}kill focused - ${color}mod+Shift+q

${color2}firefox - ${color}mod+F2
${color2}alsamixer - ${color}mod+Ctrl+m

${color2}rofi - ${color}mod+d
${color2}bmenu - ${color}mod+Shift+b
${color2}dmenu_recency - ${color}mod+Shift+d

${color2}switch to workspace 1-10 - ${color}mod+1-0
${color2}send to workspace 1-10 - ${color}mod+Ctrl+1-0
${color2}navigate workspaces - ${color}mod+Ctrl+arrowkeys

${color2}tab layout - ${color}mod+w
${color2}stack layout - ${color}mod+s
${color2}toggle split layout - ${color}mod+e

${color2}resize window - ${color}mod+r
${color2}toggle fullscreen - ${color}mod+f
${color2}toggle floating - ${color}mod+Shift+Space

${color2}exit i3- ${color}mod+Shift+e
${color2}restart i3 -${color}mod+Shift+r
${color2}lock screen - ${color}mod+Shift+x
${color2}exit options - ${color}mod+Shift+z

${color2}${color}mod=<Super>
]]
