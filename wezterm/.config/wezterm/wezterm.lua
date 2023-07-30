local wezterm = require("wezterm")
local gpus = wezterm.gui.enumerate_gpus()
local act = wezterm.action

return {
	default_prog = { "/bin/bash" }, -- why is this necessary: https://github.com/wez/wezterm/issues/2870
	debug_key_events = true,
	font = wezterm.font_with_fallback({ "Fira Code", "Hack Nerd Font" }),
	-- Hack Nerd Font
	window_background_opacity = 0.8,
	text_background_opacity = 1.0,
	scrollback_lines = 5000,
	font_size = 16.0,
	window_padding = {
		left = 2,
		right = 2,
		top = 0,
		bottom = 0,
	},
	front_end = "WebGpu",
	hide_tab_bar_if_only_one_tab = true,
	color_scheme = "Catppuccin Mocha",
	-- font = wezterm.font_with_fallback {
	-- 'JetBrainsMono Nerd Font Mono', -- Comic code breaks the font
	-- 'Noto Color Emoji',
	-- },
	line_height = 1.5,
	-- don't know what this is
	-- harfbuzz_features = {
	-- 	"cv06=1",
	-- 	"cv14=1",
	-- 	"cv32=1",
	-- 	"ss04=1",
	-- 	"ss07=1",
	-- 	"ss09=1",
	-- },
	webgpu_preferred_adapter = gpus[1],
	--enable_wayland = true, -- https://github.com/wez/wezterm/issues/1701
	cursor_blink_ease_in = "EaseIn",
	cursor_blink_ease_out = "EaseOut",
	animation_fps = 120,
	-- warn_about_missing_glyphs = false,
	cursor_blink_rate = 800,
	cursor_thickness = 1.0,
	default_cursor_style = "BlinkingBar",
	--initial_rows = 17,
	--initial_cols = 70,
	window_frame = {
		inactive_titlebar_bg = "#171723",
		active_titlebar_bg = "#171723",
		inactive_titlebar_fg = "#9399b2",
		active_titlebar_fg = "#cdd6f4",
		-- font = wezterm.font({ family = "Inter", weight = "Bold" }),
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
		{
			key = "w",
			mods = "CTRL",
			action = wezterm.action.CloseCurrentTab({ confirm = true }),
		},
		{
			key = "t",
			mods = "CTRL",
			action = wezterm.action.SpawnTab("CurrentPaneDomain"),
		},
		--   { key = '{', mods = 'ALT', action = act.ActivateTabRelative(-1) },
		-- { key = '}', mods = 'ALT', action = act.ActivateTabRelative(1) },
	},
}
