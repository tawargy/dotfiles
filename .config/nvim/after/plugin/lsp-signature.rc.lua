local status,lsp_signature=pcall(require,'lsp_signature')
if(not status) then return end

lsp_signature.setup({
    bind = true,
    handler_opts = {
      border = "rounded"
     },
    hint_prefix = " ",
    max_height = 3,
    max_width = 20,
    --floating_window = false,
  })



