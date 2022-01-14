
local nvim_lsp = require('lspconfig')
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end
vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
  vim.lsp.handlers.hover,
  { border = 'single', focusable = false, silent = true }
)

vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
  vim.lsp.handlers.hover,
  { border = 'single', focusable = false, silent = true }
)
vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics,
  {
 -- virtual_text = false,
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


------------- Servers -----------
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.cssls.setup {capabilities = capabilities}
require'lspconfig'.html.setup {capabilities = capabilities}
nvim_lsp.tsserver.setup {capabilities = capabilities}
nvim_lsp.pyright.setup{}
nvim_lsp.eslint.setup{}
nvim_lsp.bashls.setup{}
require'lspconfig'.rust_analyzer.setup{}















