local lsputil = require "utils/lsp"

return {
    cmd = { "nimlangserver" },
    root_dir = lsputil.root_globs { "*.nimble", ".git" },
    filetypes = { "nim" },
}
