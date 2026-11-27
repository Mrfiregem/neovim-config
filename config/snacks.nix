{
  # Required for icons in snacks.nvim.
  vim.mini.icons.enable = true;

  vim.utility.snacks-nvim = {
    enable = true;
    setupOpts = {
      # Show indent guides
      indent.enabled = true;

      # Enable a Zen-mode for writing.
      dim.enabled = true;
      zen.enabled = true;

      # Add a file picker
      picker = {
        enabled = true;
        matcher.cwd_bonus = true;
      };
    };
  };

  vim.keymaps =
    let
      pickerBind = key: desc: funcBody: {
        key = "<leader>s${key}";
        mode = [ "n" ];
        silent = true;
        lua = true;
        desc = "${desc} (Snacks Picker)";
        action = /* lua */ ''
          function()
            ${funcBody}
          end
        '';
      };
      zenBind = key: desc: funcBody: {
        key = "<leader>${key}";
        mode = [ "n" ];
        silent = true;
        lua = true;
        desc = "${desc} (Snacks Zen)";
        action = /* lua */ ''
          function()
            ${funcBody}
          end
        '';
      };
    in
    [
      (pickerBind "f" "Smart Find Files" "Snacks.picker.smart()")
      (pickerBind "b" "Find Buffers" "Snacks.picker.buffers()")
      (pickerBind "/" "Grep Buffer" "Snacks.picker.grep()")
      (pickerBind ":" "Command History" "Snacks.picker.command_history()")
      (pickerBind "h" "Help Pages" "Snacks.picker.help()")
      (pickerBind "k" "Keymaps" "Snacks.picker.keymaps()")
      (pickerBind "d" "Diagnostics" "Snacks.picker.diagnostics()")
      (pickerBind "r" "Resume Last Picker" "Snacks.picker.resume()")
      (pickerBind "D" "LSP Definitions" "Snacks.picker.lsp_definitions()")
      (pickerBind "R" "LSP References" "Snacks.picker.lsp_references()")
      (pickerBind "S" "LSP Symbols" "Snacks.picker.lsp_symbols()")

      (zenBind "z" "Toggle Zen Mode" "Snacks.zen()")
      (zenBind "Z" "Toggle Zen Mode" "Snacks.zen.zoom()")
    ];
}
