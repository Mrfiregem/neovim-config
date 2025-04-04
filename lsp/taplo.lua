local lsputil = require "utils.lsp"

return {
    cmd = { "taplo", "lsp", "stdio" },
    filetypes = { "toml" },
    root_dir = lsputil.root_globs { ".git", "*.toml" },
    -- root_markers = { ".git" },
    single_file_support = true,
}
