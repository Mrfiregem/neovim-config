# vim: et sw=2
{
  vim = {
    # Enable LSP functionality
    lsp = {
      enable = true;
      inlayHints.enable = true;
      lightbulb.enable = true;
    };

    # Languages to setup LSP for
    languages = {
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

    # Tab completion
    autocomplete.blink-cmp = {
      enable = true;
      friendly-snippets.enable = true;
    };

    # Insert corresponding delimeter when typing
    autopairs.nvim-autopairs.enable = true;

    # Colorscheme
    theme = {
      enable = true;
      name = "catppuccin";
      style = "auto";
    };
  };
}
