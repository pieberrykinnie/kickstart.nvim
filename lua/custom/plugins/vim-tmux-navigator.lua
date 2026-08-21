-- Add and load the plugin via Neovim 0.11+ vim.pack
vim.pack.add({
  "https://github.com/christoomey/vim-tmux-navigator",
})

-- Keymaps (mirrors your lazy.nvim key definitions)
local map = vim.keymap.set
local opts = { silent = true, desc = "Tmux Navigation" }

map("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>", opts)
map("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>", opts)
map("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>", opts)
map("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>", opts)
map("n", "<C-\\>", "<cmd>TmuxNavigatePrevious<CR>", opts)
