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
map('n','<leader>s',':w<CR>',opts_1)
map('n','<leader>q',':q<CR>',opts_1)
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

--lsp saga
map("n", "<Leader>cf", ":Lspsaga lsp_finder<CR>", {silent = true})
map("n", "<leader>ca", ":Lspsaga code_action<CR>", {silent = true})
map("v", "<leader>ca", ":<C-U>Lspsaga range_code_action<CR>", {silent = true})
map("n", "<leader>ch", ":Lspsaga hover_doc<CR>", {silent = true})
map("n", "<leader>ck", '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(-1)<CR>', {silent = true})
map("n", "<leader>cj", '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(1)<CR>', {silent = true})
map("n", "<leader>cs", ":Lspsaga signature_help<CR>", {silent = true})
map("n", "<leader>ci", ":Lspsaga show_line_diagnostics<CR>", {silent = true})
map("n", "<leader>cn", ":Lspsaga diagnostic_jump_next<CR>", {silent = true})
map("n", "<leader>cp", ":Lspsaga diagnostic_jump_prev<CR>", {silent = true})
map("n", "<leader>cr", ":Lspsaga rename<CR>", opts_1)
map("n", "<leader>cd", ":Lspsaga preview_definition<CR>", {silent = true})


  


