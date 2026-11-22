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
    nix.enable = true;
    nu.enable = true;

    ## Webdev
    css.enable = true;
    typescript.enable = true;

    ## Programming
    clang.enable = true;
    rust.enable = true;
  };
}
