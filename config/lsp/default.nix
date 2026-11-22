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
