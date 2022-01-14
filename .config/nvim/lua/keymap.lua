local map = vim.api.nvim_set_keymap
local opts_0={noremap=true,silent=false}
local opts_1={noremap=true,silent=true}
--Clipbord Copy and Past
vim.cmd[[
vnoremap <C-c> "+y
map <C-p> "+p
]]
--buffers navigation 
map('n','<TAB>',':BufferLineCycleNext<CR>',opts_1)
map('n','<S-TAB>',':BufferLineCyclePrev<CR>',opts_1)
-- Use alt-hjkl to resize windows
map('n','<M-up>', '<c-w>+',opts_1)
map('n','<M-down>', '<c-w>-', opts_1)
map('n','<M-left>', '<c-w>>', opts_1)
map('n','<M-right>', '<c-w><', opts_1)
-- window navigation
map('n','<C-h>','<C-w>h',opts_1)
map('n','<C-l>','<C-w>l',opts_1)
map('n','<C-j>','<C-w>j',opts_1)
map('n','<C-k>','<C-w>k',opts_1)
--ESC, save, qiut
map('i','jk','<ESC>',opts_1)
map('n','<C-s>',':w<CR>',opts_1)
map('n','<C-q>',':q<CR>',opts_1)
map('n','bd',':bd<CR>',opts_1)  --colse buffer
--nvim-tree
map('n','<C-e>',':NvimTreeToggle<CR>',opts_1)
--formatter
map('n','<leader>f',':Format<CR>',opts_0)
--Telescope
map('n','<C-f>',':Telescope find_files<CR>',opts_0)
map('n','<leader>TT',':Telescope search_src<CR>',opts_0)

-- Find files using Telescope command-line sugar.
map('n','<leader>ff',':Telescope find_files<CR>',opts_1)
map('n','<leader>fg',':Telescope live_grep<CR>',opts_1)
map('n','<leader>fb',':Telescope buffers<CR>',opts_1)
map('n','<leader>fh',':Telescope help_tags<CR>',opts_1)

-- lsp 
map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts_0)
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts_0)
map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts_0)
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts_0)
map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts_0)
map('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts_0)
map('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts_0)
map('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts_0)
map('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts_0)
map('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts_0)
map('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts_0)
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts_0)
map('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts_0)
map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts_0)
map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts_0)
map('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts_0)
--map('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts_0)
  


