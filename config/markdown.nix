{
  vim.luaConfigRC.markdown-ft = /* lua */ ''
    vim.api.nvim_create_autocmd("FileType", {
      group = vim.api.nvim_create_augroup("nvf_markdown_settings", { clear = true }),
      pattern = "markdown",
      callback = function(args)
        vim.opt_local.wrap = true
        vim.opt_local.linebreak = true
        vim.opt_local.spell = true

        local opts = { buffer = args.buf, silent = true }
        vim.keymap.set("n", "j", "gj", opts)
        vim.keymap.set("n", "k", "gk", opts)
      end,
    })
  '';
}
