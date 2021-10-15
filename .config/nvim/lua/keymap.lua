local map = vim.api.nvim_set_keymap
local opts_0={noremap=true,silent=false}
local opts_1={noremap=true,silent=true}
--Clipbord Copy and Past
vim.cmd[[
vnoremap <C-c> "+y
map <C-p> "+p
]]
map('n','<TAB>',':BufferLineCycleNext<CR>',opts_1)
map('n','<S-TAB>',':BufferLineCyclePrev<CR>',opts_1)
-- Use alt-hjkl to resize windows
map('n','<M-j>', '<:resize -2<CR>',opts_1)
map('n','<M-k>', '<:resize +2<CR>', opts_1)
map('n','<M-h>', '<:vertical resize -2<CR>', opts_1)
map('n','<M-l>', '<:vertical resize +2<CR>', opts_1)
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

-- nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
-- nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
-- nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
-- nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>




  


