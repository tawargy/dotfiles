local status,nvim_lsp=pcall(require,'lspconfig')
if(not status) then return end

local signs = { Error = "󰨰 ", Warn = "⚠ ", Hint = "󱧡 ", Info = " " }
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
     underline = true,
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


--local capabilities = vim.lsp.protocol.make_client_capabilities()
--capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local servers = { 
'html',
'cssls',
'eslint',
'bashls',
'rust_analyzer',
'pyright',
'tsserver',
'clangd',
}


nvim_lsp.yamlls.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    yaml = {
      schemas = {
                ["https://raw.githubusercontent.com/quantumblacklabs/kedro/develop/static/jsonschema/kedro-catalog-0.17.json"]= "conf/**/*catalog*",
                ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*"
            }
          }
  }
}


for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
     --on_attach = my_custom_on_attach,
     on_attach = on_attach,
    capabilities = capabilities,
  }
end

local cmp_nvim_lsp = require "cmp_nvim_lsp"
nvim_lsp.clangd.setup {
  on_attach = on_attach,
  capabilities = cmp_nvim_lsp.default_capabilities(),
  cmd = {
    "clangd",
    "--offset-encoding=utf-16",
  },
}

