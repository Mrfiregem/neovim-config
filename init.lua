-- Load packages
require "config.lazy"

-- Set default indentation
vim.opt.expandtab = true -- Use spaces over tabs
vim.opt.shiftwidth = 4 -- # of spaces to use per indentation level

-- Show line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Make :commands tab completion case-insensitive
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Set theme
vim.cmd.colorscheme "catppuccin-macchiato"

-- Load LSP configs in ./lsp/*.lua
vim.lsp.enable { "lua_ls", "bash_ls", "nu_lsp" }

-- Enable showing diagnostic messages on current line
vim.diagnostic.config {
    virtual_lines = { current_line = true },
}
