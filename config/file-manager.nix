{
  vim = {
    filetree.neo-tree.enable = true;

    keymaps = [
      {
        key = "<leader>e";
        mode = "n";
        silent = true;
        action = "<Cmd>Neotree toggle reveal<CR>";
        desc = "Toggle Neo-tree";
      }
      {
        key = "<leader>be";
        mode = "n";
        silent = true;
        action = "<Cmd>Neotree buffers toggle<CR>";
        desc = "Toggle open buffers in Neo-tree";
      }
    ];
  };
}
