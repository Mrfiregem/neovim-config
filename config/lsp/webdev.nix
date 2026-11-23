{
  vim.languages = {
    astro.enable = true;
    css.enable = true;
    svelte.enable = true;
    typescript.enable = true;

    html = {
      enable = true;
      extraDiagnostics.enable = true;
      lsp.servers = [ "emmet-ls" ];
      # NVF doesn't respect the HTML formatter if an
      # LSP is enabled, so we configure prettier below.
      format.enable = false;
    };
  };

  vim.formatter.conform-nvim = {
    enable = true;
    presets.prettier.enable = true;
    setupOpts.formatters_by_ft.html = [ "prettier" ];
  };
}
