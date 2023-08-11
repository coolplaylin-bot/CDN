local lspconfig = require("lspconfig")
require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_snipmate").lazy_load()
-- mason 配置
require("mason-lspconfig").setup(
    {
        ensure_installed = {}
    }
)

require("mason").setup(
    {
        ui = {
            icons = {
                package_pending = "→",
                package_installed = "√",
                package_uninstalled = "×"
            }
        }
    }
)

-- typescript & javascript
lspconfig.tsserver.setup({})

-- 使用 pyright
lspconfig.pyright.setup(
    {
        -- 在此处添加特定于 pyright 的配置，可选
        settings = {
            python = {
                analysis = {
                    typeCheckingMode = "basic",
                    autoSearchPaths = true,
                    useLibraryCodeForTypes = true
                }
            }
        }
    }
)

-- vue yaml html css的lsp
lspconfig.yamlls.setup({})
lspconfig.jsonls.setup({})
lspconfig.html.setup({})
lspconfig.cssls.setup({})
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.cssls.setup(
    {
        capabilities = capabilities
    }
)
--Enable (broadcasting) snippet capability for completion
lspconfig.html.setup(
    {
        capabilities = capabilities
    }
)
lspconfig.eslint.setup(
    {
        --- ...
        on_attach = function(client, bufnr)
            vim.api.nvim_create_autocmd(
                "BufWritePre",
                {
                    buffer = bufnr,
                    command = "EslintFixAll"
                }
            )
        end
    }
)
-- lua
lspconfig.lua_ls.setup(
    {
        on_init = function(client)
            local path = client.workspace_folders[1].name
            _G.vim = vim
            if not vim.loop.fs_stat(path .. "/.luarc.json") and not vim.loop.fs_stat(path .. "/.luarc.jsonc") then
                client.config.settings =
                    vim.tbl_deep_extend(
                    "force",
                    client.config.settings.Lua,
                    {
                        runtime = {
                            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                            version = "LuaJIT"
                        },
                        -- Make the server aware of Neovim runtime files
                        workspace = {
                            library = {vim.env.VIMRUNTIME}
                            -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
                            -- library = vim.api.nvim_get_runtime_file("", true)
                        }
                    }
                )

                client.notify("workspace/didChangeConfiguration", {settings = client.config.settings})
            end
            return true
        end
    }
)

lspconfig.volar.setup {
    filetypes = {"typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json"}
}
