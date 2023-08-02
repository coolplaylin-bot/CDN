require("mason").setup({
  ui = {
    icons = {
      package_pending = "→",
      package_installed = "√",
      package_uninstalled = "×"
    }
  }
})

require("mason-lspconfig").setup({
  ensure_installed = {}
})
local lspconfig = require('lspconfig')

-- typescript & javascript
lspconfig.tsserver.setup({})

-- python
-- 使用 pyright
lspconfig.pyright.setup({
  -- 在此处添加特定于 pyright 的配置，可选
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
      }
    }
  }
})
lspconfig.vls.setup({})
lspconfig.yamlls.setup({})
lspconfig.jsonls.setup({})
lspconfig.html.setup({})
lspconfig.cssls.setup({})
