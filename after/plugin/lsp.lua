local lsp = require('lsp-zero').preset({})

local cmp = require('cmp')

cmp.setup {
  sources = {
    { name = 'nvim_lsp'},
    { name = 'nvim_lsp_signature_help' }
  },
}

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- IMPORTANT: make sure to setup neodev BEFORE lspconfig
require("neodev").setup({
  -- add any options here, or leave empty to use the default settings
})

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())


lsp.setup()
