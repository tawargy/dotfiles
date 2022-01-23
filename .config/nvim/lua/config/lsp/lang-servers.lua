
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
require "lsp_signature".setup({
    bind = true,
    handler_opts = {
      border = "rounded"
     },
    hint_prefix = " ",
    max_height = 3,
    max_width = 20,
    --floating_window = false,
  })



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
  {
border = 'single', focusable = false, silent = true 
  
  })
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

local function lsp_highlight_document(client)
  -- Set autocommands conditional on server_capabilities
  if client.resolved_capabilities.document_highlight then
    vim.api.nvim_exec(
      [[
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]],
      false
    )
  end
end


------------- Servers -----------
-- local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- capabilities.textDocument.completion.completionItem.snippetSupport = true

local lspconfig = require('lspconfig')

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local servers = { 'html','cssls','eslint','bashls', 'rust_analyzer', 'pyright', 'tsserver' }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    -- on_attach = my_custom_on_attach,
    capabilities = capabilities,
  }
end

-- require'lspconfig'.cssls.setup {capabilities = capabilities}
-- require'lspconfig'.html.setup {capabilities = capabilities}
-- nvim_lsp.tsserver.setup {capabilities = capabilities}
-- nvim_lsp.pyright.setup{}
-- nvim_lsp.eslint.setup{}
-- nvim_lsp.bashls.setup{}
-- require'lspconfig'.rust_analyzer.setup{}















