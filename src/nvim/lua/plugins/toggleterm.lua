require('toggleterm').setup({
  open_mapping = '<leader>t',
  direction = 'horizontal',
  shade_terminals = true,
  shell = 'pwsh',
  float_opts = {
    border = 'single',
    width = 0.8,
    height = 0.8,
    winblend = 10,
    highlights = {
      border = "Normal",
      background = "Normal",
    }
  },
  hide_numbers = true,
  insert_mappings = false,
})
