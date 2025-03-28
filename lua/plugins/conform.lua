local M = {
    "stevearc/conform.nvim",
    event = "LspAttach",
}

M.opts = {
    format_on_save = { lsp_format = "fallback" },
    formatters_by_ft = {
        lua = { "stylua" },
        nu = { "nufmt" },
        sh = { "shfmt" },
        bash = { "shfmt" },
    },
}

return M
