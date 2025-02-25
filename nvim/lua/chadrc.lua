---@diagnostic disable: missing-fields
-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
    -- theme = "jabuti",
    theme = "everblush",

    hl_override = {
        Comment = { italic = true },
        ["@comment"] = { italic = true },
    },
    transparency = true
}

M.ui = {
    statusline = {
        theme = "minimal",
        separator_style = "round"
    }
}

return M
