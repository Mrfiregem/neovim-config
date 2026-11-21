# vim: et sw=2
{
  vim = {
    # Case-insensitive unless capitalized
    searchCase = "smart";

    # Corresponding to `vim.o` options
    options = {
      shiftwidth = 2;
      expandtab = true;
    };

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

      # Accept selected cmdline completion item first
      # to prevent accidentally running unfinished commands.
      setupOpts.cmdline.keymap."<CR>" = [
        "select_and_accept"
        "fallback"
      ];
    };

    # Insert corresponding delimeter when typing
    autopairs.nvim-autopairs.enable = true;

    utility.surround = {
      enable = true;
      useVendoredKeybindings = false;
    };

    # Show keybind menu helper popup
    binds.whichKey.enable = true;

    # Colorscheme
    theme = {
      enable = true;
      name = "catppuccin";
      style = "auto";
    };
  };
}
