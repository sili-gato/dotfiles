local wezterm = require("wezterm")
local config = wezterm.config_builder()

local mux = wezterm.mux

local status = require("status")

-- Font
config.font_size = 16

-- Window
config.window_background_opacity = 0.85
config.macos_window_background_blur = 100 -- blur
config.window_decorations = "RESIZE"      -- removes title bar
config.adjust_window_size_when_changing_font_size = false
config.initial_cols = 175
config.initial_rows = 48
config.window_padding = {
    left = "0.5cell",
    right = "0.5cell",
    top = "0.5cell",
    bottom = 0,
}

-- Tabs
config.use_fancy_tab_bar = false
config.show_new_tab_button_in_tab_bar = false
config.tab_max_width = 30

-- Theme
config.color_scheme = "tokyonight_moon"

local bg_color = "14151f"

config.colors = {
    background = bg_color,
    tab_bar = {
        background = bg_color,
        active_tab = {
            bg_color = bg_color,
            fg_color = "fca7ea",
            intensity = "Bold",
        },
        inactive_tab = {
            bg_color = bg_color,
            fg_color = "737aa2",
        },
        inactive_tab_hover = {
            bg_color = bg_color,
            fg_color = "82e2ff",
        },
    },
}

return config
