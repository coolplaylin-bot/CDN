local opt = vim.opt

-- 行号
opt.relativenumber = true
opt.number = true

-- 缩进
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- 防止包裹
opt.wrap = false

-- 光标行
opt.cursorline = true

-- 启用鼠标
opt.mouse:append("a")

-- 系统粘贴板
opt.clipboard:append("unnamedplus")

-- 默认新窗口 Right & Below
opt.splitright = true
opt.splitbelow = true

-- 搜索
opt.ignorecase = true
opt.smartcase = true

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"
require("onedark").setup {
    style = "deep",
    term_colors = true, -- Change terminal color as per the selected theme style
    ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
    cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
    code_style = {
        comments = "italic",
        keywords = "none",
        functions = "none",
        strings = "none",
        variables = "none"
    },
    lualine = {
        transparent = false -- lualine center bar transparency
    },
    colors = {}, -- Override default colors
    diagnostics = {
        undercurl = true, -- use undercurl instead of underline for diagnostics
        background = true -- use background color for virtual text
    },
    highlights = {} -- Override highlight groups
}
require("onedark").load()
