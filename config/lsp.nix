{
  # Enable LSP functionality
  vim.lsp = {
    enable = true;
    inlayHints.enable = true;
    lightbulb.enable = true;
  };

  # Languages to setup LSP for
  vim.languages = {
    # Settings for all languages
    enableFormat = true;
    enableTreesitter = true;

    # Per-language settings
    ## Shell-related
    bash.enable = true;
    fish.enable = true;
    nix.enable = true;
    nu.enable = true;

    ## Webdev
    astro.enable = true;
    css.enable = true;
    html = {
      enable = true;
      lsp.servers = [
        "superhtml"
        "emmet-ls"
      ];
      format.type = [ "prettier" ];
    };
    svelte.enable = true;
    typescript.enable = true;

    ## Programming
    clang.enable = true;
    lua.enable = true;
    nim.enable = true;
    python.enable = true;
    rust.enable = true;
  };
}
