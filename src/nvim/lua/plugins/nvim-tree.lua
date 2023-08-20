-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- empty setup using defaults
require("nvim-tree").setup()

-- 配置 NvimTree 的图标设置
require('nvim-web-devicons').setup {
  default = true;
}
