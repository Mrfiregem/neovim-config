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

    # Insert corresponding delimeter when typing
    autopairs.nvim-autopairs.enable = true;

    utility.surround = {
      enable = true;
      useVendoredKeybindings = false;
    };

    # Show keybind menu helper popup
    binds.whichKey.enable = true;
  };
}
