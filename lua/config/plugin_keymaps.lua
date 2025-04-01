local wk = require "which-key"
wk.add {
    { "<leader>t", group = "neo-tree" },
    { "<leader>tt", "<cmd>Neotree toggle<cr>", desc = "Toggle Neotree", mode = "n" },
    { "<leader>tf", "<cmd>Neotree selector filesystem<cr>", desc = "Filesystem selector", mode = "n" },
    { "<leader>tb", "<cmd>Neotree selector buffers<cr>", desc = "Buffer selector", mode = "n" },
    { "<leader>tg", "<cmd>Neotree selector git_status<cr>", desc = "Git status selector", mode = "n" },
}
