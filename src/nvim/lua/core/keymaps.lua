vim.g.mapleader = " "

local keymap = vim.keymap

-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")

-- nvim tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- 切换 buffer
keymap.set("n", "<leader>m", ":bnext<CR>")
keymap.set("n", "<leader>n", ":bprevious<CR>")
