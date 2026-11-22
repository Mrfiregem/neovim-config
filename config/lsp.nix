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

    # Format buffer with `<leader>f` using Conform.
    keymaps = [
      {
        key = "<leader>f";
        mode = [
          "n"
          "v"
        ];
        silent = true;
        lua = true;
        desc = "Format buffer (Conform)";
        action = ''
          function()
            require("conform").format({
              async = true,
              lsp_format = "fallback",
            })
          end
        '';
      }
    ];
  };
}
