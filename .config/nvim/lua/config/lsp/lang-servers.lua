
local nvim_lsp = require('lspconfig')


vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics,
  {
--    virtual_text = false,
    virtual_text = {
      show_source = 'always',
      spacing = 4,
      prefix = '■', -- Could be '●', '▎', 'x'
    },
    underline = false,
    signs = true,
    update_in_insert = false,
  }
)




local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

--Enable CSS
--local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.cssls.setup {
  capabilities = capabilities,
}

--Enable HTML
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
  capabilities = capabilities,
}
-- Typescript server
nvim_lsp.tsserver.setup {
-- cmd = { "typescript-language-server", "--stdio" },
-- filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
-- init_options = {
--       hostInfo = "neovim"
--     },
-- root_dir = nvim_lsp.util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git","*.js","*.ts"),
-- on_attach = custom_lsp_attach,

  capabilities = capabilities,

}
-- Python server
nvim_lsp.pyright.setup{}
-- require'lspconfig'.tsserver.setup{}



nvim_lsp.eslint.setup{}




















