local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local feedkey = function(key, mode)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end

local status,cmp=pcall(require,'cmp')
if (not status) then return end

local status,lspkind=pcall(require,'lspkind')
if (not status) then return end

local lspkind = require('lspkind')

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
    snippet = {
      expand = function(args)
        -- For `vsnip` user.
        vim.fn["vsnip#anonymous"](args.body)

        -- For `luasnip` user.
         require('luasnip').lsp_expand(args.body)

        -- For `ultisnips` user.
        -- vim.fn["UltiSnips#Anon"](args.body)
      end,
    },
    mapping = {
      ["<C-k>"] = cmp.mapping.select_prev_item(),
		  ["<C-j>"] = cmp.mapping.select_next_item(),
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),

      -- ["<Down>"] = cmp.mapping(function(fallback)
      -- if cmp.visible() then
      --   cmp.select_next_item()
      -- elseif vim.fn["vsnip#available"]() == 1 then
      --   feedkey("<Plug>(vsnip-expand-or-jump)", "")
      -- elseif has_words_before() then
      --   cmp.complete()
      -- else
      --   fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
      -- end
    -- end, { "i", "s" }),

    -- ["<Up>"] = cmp.mapping(function()
      -- if cmp.visible() then
      --   cmp.select_prev_item()
      -- elseif vim.fn["vsnip#jumpable"](-1) == 1 then
      --   feedkey("<Plug>(vsnip-jump-prev)", "")
      -- end
    -- end, { "i", "s" }),
    },



    sources = {
     { name = 'nvim_lsp' },    
     { name = 'buffer' },
     { name = 'path'},
     { name = 'luasnip'},

    },

    formatting = {
    format = lspkind.cmp_format({with_text = true, maxwidth = 50, menu = ({
      buffer = "[Buffer]",
      nvim_lsp = "[LSP]",
      path= "[Path]",
      luasnip = "[Snippet]",
    })})},


  
  })




