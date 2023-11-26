---@type ChadrcConfig
local M = {}

local colors = require 'custom.mountain'
-- local colors = require 'custom.catppuccin'

-- local gen_block = require('statusline').gen_block

M.ui = {
    theme = 'mountain',
    hl_override = {
        IndentBlanklineChar = { fg = colors.line },             -- Foreground indent line color
        IndentBlanklineSpaceChar = { fg = colors.line },        -- Foregruond space character color
        IndentBlanklineContextChar = { fg = colors.blue },      -- Foreground active indent line color
        IndentBlanklineContextStart = { bg = colors.one_bg2 },  -- Foreground and background text of first context line
    },
    statusline = {
        theme = 'minimal',
        separator_style = 'block',
        overriden_modules = function(modules)
            table.remove(modules, 3)
            table.remove(modules, 7)
            table.remove(modules, 8)
        end
    },
    tabufline = {
        overriden_modules = function(modules)
            table.insert(modules, modules[1])
            table.remove(modules, 1)
        end
    }
}

return M
