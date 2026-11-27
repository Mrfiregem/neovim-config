{ lib, ... }:
{
  # Tab completion using Blink.
  vim.autocomplete.blink-cmp = {
    enable = true;
    friendly-snippets.enable = true;

    # Accept selected cmdline completion item first
    # to prevent accidentally running unfinished commands.
    setupOpts.cmdline = {
      enabled = true;
      keymap = {
        preset = "cmdline";
      };
      completion = {
        list.selection.preselect = false;
        menu.auto_show = lib.generators.mkLuaInline /* lua */ ''
          function(ctx)
            return vim.fn.getcmdtype() == ":"
          end
        '';
      };
    };
  };
}
