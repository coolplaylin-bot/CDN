require("nvim-treesitter.install").compilers = {"clang", "gcc"}
require("nvim-treesitter.configs").setup {
    ensure_installed = {
        "c",
        "lua",
        "python",
        "cpp",
        "c",
        "javascript",
        "typescript",
        "markdown",
        "json",
        "yaml",
        "vue",
        "css",
        "html"
    }, -- optional
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    }
}
