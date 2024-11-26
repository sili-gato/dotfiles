local wezterm = require('wezterm')
local act = wezterm.action

local mod = {}

mod.SUPER = 'SUPER'
mod.SUPER_REV = 'SUPER|CTRL'

local keys = {
    {
        key = [[\]],
        mods = mod.SUPER,
        action = act.SplitVertical({ domain = 'CurrentPaneDomain' }),
    },
    {
        key = [[\]],
        mods = mod.SUPER_REV,
        action = act.SplitHorizontal({ domain = 'CurrentPaneDomain' }),
    },
    {
        key = 'k',
        mods = mod.SUPER_REV,
        action = act.ActivatePaneDirection('Up')
    },
    {
        key = 'j',
        mods = mod.SUPER_REV,
        action = act.ActivatePaneDirection('Down')
    },
    {
        key = 'w',
        mods = mod.SUPER,
        action = act.CloseCurrentPane({ confirm = false })
    },
    {
        key = 'h',
        mods = mod.SUPER_REV,
        action = act.ActivatePaneDirection('Left')
    },
    {
        key = 'l',
        mods = mod.SUPER_REV,
        action = act.ActivatePaneDirection('Right')
    },
}

return keys
