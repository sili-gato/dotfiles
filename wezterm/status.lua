local wezterm = require("wezterm")
local scheme = wezterm.color.get_builtin_schemes()["tokyonight_moon"]


wezterm.on("update-right-status", function(window, pane)
    local cwd_uri = pane:get_current_working_dir()
    local cwd = ""

    if cwd_uri then
        local path = cwd_uri.file_path
        local home_dir = os.getenv("HOME")
        if path:sub(1, #home_dir) == home_dir then
            cwd = "~" .. path:sub(#home_dir + 1)
        else
            cwd = path
        end
    end

    window:set_left_status(wezterm.format({
        -- cwd
        { Foreground = { Color = scheme.brights[7] } },
        { Text = "    " },
        { Foreground = { Color = scheme.foreground } },
        { Text = cwd },
    }))
end)
