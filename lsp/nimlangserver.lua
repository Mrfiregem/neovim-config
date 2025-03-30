local lsputil = require "utils/lsp"

return {
    cmd = { "nimlangserver" },
    root_dir = lsputil.root_globs { "*.nimble", ".git" },
    single_file_support = true,
    filetypes = { "nim" },
}
