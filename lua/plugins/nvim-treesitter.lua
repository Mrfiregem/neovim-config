local parsers = { "nu", "nim", "html", "css", "javascript", "php", "python" }
local M = {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    config = function()
        local configs = require "nvim-treesitter.configs"
        configs.setup {
            ensure_installed = parsers,
            highlight = { enable = true },
            indent = { enable = true },
        }
    end,
}

return M
