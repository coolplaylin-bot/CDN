local neoformat_status, neoformat = pcall(require, "neoformat")
if not neoformat_status then
    return
end

-- Neoformat 配置
vim.cmd([[
  augroup NeoformatAutogroup
    autocmd!
    autocmd BufWritePre * undojoin | Neoformat
  augroup END
]])
