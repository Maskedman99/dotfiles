conky.config = {
--Position
        alignment = 'top_left',
        gap_x = 10,
        gap_y = 10,
        draw_shades = false,
        minimum_width = 200,

--Colors
        color2 = '3992CE',
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
          ${color2}ranger${color}

${color2}copy - ${color}yy
${color2}move - ${color}dd
${color2}rename - ${color}cw
${color2}open file with - ${color}r
${color2}delete selected files - ${color}Delete

${color2}find a file - ${color}Ctrl+f
${color2}search for files - ${color}\\

${color2}show disk usage - ${color}dd
${color2}show hidden files - ${color}zh
${color2}select current file - ${color}space

${color2}half page up - ${color}Shift+K
${color2}go to top of list - ${color}gg
${color2}half page down - ${color}Shift+J
${color2}go to bottom of list - ${color}Shift+g

${color2}go to file sysytem - ${color}gr
${color2}go to home directory - ${color}gh

${color2}execute shell commands - ${color}!
${color2}execute ranger commands - ${color}:

${color2}next tab - ${color}Tab
${color2}previous tab - ${color}Shift+Tab
${color2}create a new tab - ${color}Ctrl+n
${color2}close current tab - ${color}Ctrl+w

${color2}quit - ${color}q
${color2}refresh - ${color}Shift+r
]]
