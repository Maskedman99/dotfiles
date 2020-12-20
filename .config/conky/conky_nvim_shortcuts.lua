conky.config = {
--Position
        alignment = 'top_right',
        gap_x = 10,
        gap_y = 10,
        draw_shades = false,
        minimum_width = 200,

--Colors
        color2 = 'D863BB',
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
          ${color2}nvim${color}

${color2}copy - ${color}y
${color2}paste - ${color}p

${color2}focus nerdtree - ${color}Ctrl+n
${color2}toggle nerdtree - ${color}Ctrl+b
]]
