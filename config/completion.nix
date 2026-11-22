{
  # Tab completion using Blink.
  vim.autocomplete.blink-cmp = {
    enable = true;
    friendly-snippets.enable = true;

    # Accept selected cmdline completion item first
    # to prevent accidentally running unfinished commands.
    setupOpts.cmdline.keymap."<CR>" = [
      "select_and_accept"
      "fallback"
    ];
  };
}
