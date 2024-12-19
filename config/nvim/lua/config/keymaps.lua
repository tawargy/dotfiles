local keymap = vim.keymap
--local opts_0={noremap=true,silent=false}
--local opts_1={noremap=true,silent=true}
--Clipbord Copy and Past
vim.cmd([[
vnoremap <C-c> "+y
map <C-p> "+p
]])

keymap.set("n", "<space>nh", ":noh<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "-", "<C-x>", { desc = "Decrement number" })
-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make split windows equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split window" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open new tab with current file" })
-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })

-- Use alt-hjkl to resize windows
keymap.set("n", "<M-up>", "<c-w>+", { desc = "Increase window height" })
keymap.set("n", "<M-down>", "<c-w>-", { desc = "Decrease window height" })
keymap.set("n", "<M-left>", "<c-w>>", { desc = "Decrease window width" })
keymap.set("n", "<M-right>", "<c-w><", { desc = "Increase window width" })
--ESC, save, qiut
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("n", "<C-s>", ":w<CR>", opts_1)
keymap.set("n", "<C-q>", ":q<CR>", opts_1)
keymap.set("n", "bd", ":bd<CR>", opts_1) --colse buffer
--nvim-tree
--keymap.set('n','<C-n>',':NvimTreeToggle<CR>',opts_1)

--formatter
-- map('n','<leader>f',':Format<CR>',opts_0)
----git
--map('n','<leader>do',':DiffviewOpen<CR>',opts_0)
--map('n','<leader>dc',':DiffviewClose<CR>',opts_0)
----Telescope
--map('n','<C-f>',':Telescope find_files<CR>',opts_0)
--map('n','<leader>TT',':Telescope search_src<CR>',opts_0)

---- Find files using Telescope command-line sugar.
--map('n','<leader>ff',':Telescope find_files<CR>',opts_1)
--map('n','<leader>fg',':Telescope live_grep<CR>',opts_1)
--map('n','<leader>fb',':Telescope buffers<CR>',opts_1)
--map('n','<leader>fh',':Telescope help_tags<CR>',opts_1)

-- lsp
--map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts_0)
--map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts_0)
--map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts_0)
--map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts_0)
--map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts_0)
--map('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts_0)
--map('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts_0)
--map('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts_0)
--map('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts_0)
--map('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts_0)
--map('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts_0)
--map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts_0)
--map('n', 'ee', '<cmd>lua vim.diagnostic.open_float()<CR>', opts_0)
--map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts_0)
--map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts_0)
--map('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts_0)
----map('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts_0)
