local wezterm = require("wezterm")
local gpus = wezterm.gui.enumerate_gpus()
local act = wezterm.action

return {
	default_prog = { "/bin/bash" }, -- why is this necessary: https://github.com/wez/wezterm/issues/2870
	debug_key_events = true,
	font = wezterm.font_with_fallback({ "Fira Code", "Hack Nerd Font" }),
	window_background_opacity = 0.8,
	text_background_opacity = 1.0,
	scrollback_lines = 5000,
	font_size = 17.0,
	window_padding = {
		left = 2,
		right = 2,
		top = 0,
		bottom = 0,
	},
	front_end = "WebGpu",
	hide_tab_bar_if_only_one_tab = true,
	color_scheme = "Catppuccin Mocha",
	line_height = 1.1,
	webgpu_preferred_adapter = gpus[1],
	--enable_wayland = true, -- https://github.com/wez/wezterm/issues/1701
	cursor_blink_ease_in = "EaseIn",
	cursor_blink_ease_out = "EaseOut",
	animation_fps = 120,
	cursor_blink_rate = 800,
	cursor_thickness = 1.0,
	-- default_cursor_style = "BlinkingBar",
	window_frame = {
		inactive_titlebar_bg = "#171723",
		active_titlebar_bg = "#171723",
		inactive_titlebar_fg = "#9399b2",
		active_titlebar_fg = "#cdd6f4",
	},
	colors = {
		tab_bar = {
			active_tab = {
				bg_color = "#1e1e2e",
				fg_color = "#cdd6f4",
				intensity = "Bold",
			},
			inactive_tab = {
				bg_color = "#313244",
				fg_color = "#9399b2",
			},
			inactive_tab_hover = {
				bg_color = "#11111b",
				fg_color = "#cdd6f4",
			},
			new_tab = {
				bg_color = "#181825",
				fg_color = "#cdd6f4",
			},
			new_tab_hover = {
				bg_color = "#1e1e2e",
				fg_color = "#cdd6f4",
			},
		},
	},
	-- use_ime = false,
	keys = {
		{
			key = "K",
			mods = "CTRL|SHIFT",
			action = act.Multiple({
				act.ClearScrollback("ScrollbackAndViewport"),
				act.SendKey({ key = "L", mods = "CTRL" }),
			}),
		},
	},
}
