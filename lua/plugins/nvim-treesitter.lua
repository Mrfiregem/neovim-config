---@return string[]
local read_tslist_file = function()
    local path = vim.fs.joinpath(vim.fn.stdpath "config", "lua", "config", "ts-list.txt")
    local f = io.open(path, "r")
    if not f then return {} end
    local parsers = {}
    for p in f:lines() do
        if p ~= "" then parsers[#parsers + 1] = p end
    end
    f:close()
    return parsers
end

local M = {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    config = function()
        local configs = require "nvim-treesitter.configs"
        ---@diagnostic disable-next-line: missing-fields
        configs.setup {
            ensure_installed = read_tslist_file(),
            highlight = { enable = true },
            indent = { enable = true },
        }
    end,
}

return M
