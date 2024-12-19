-------------------------------------------------------------------------------
-- GENERAL {{{1
-------------------------------------------------------------------------------
vim.g.mapleader = " "
vim.g.maplocalleader = ","
--Skip vim plugins menu.vim, saves ~100ms
vim.g.did_install_default_menus = 1
vim.g.loaded_getscript = 1
vim.g.loaded_getscriptPlugin = 1
vim.g.loaded_vimball = 1
vim.g.loaded_vimballPlugin = 1
vim.g.loaded_rrhelper = 1

-- vim.opt. them directly if they are installed, otherwise disable them. To avoid the then
-- runtime check cost, which can be slow.
-- Python This must be here becasue it makes loading vim VERY SLOW otherwise
vim.g.python_host_skip_check = 1
-- Disable python2 provider
vim.g.loaded_python_provider = 0

vim.g.python3_host_skip_check = 1

if vim.fn.executable("python3") == 1 then
	vim.g.python3_host_prog = vim.fn.exepath("python3")

	vim.g.loaded_python3_provider = 0
end

if vim.fn.executable("neovim-node-host") == 1 then
	vim.g.node_host_prog = vim.fn.exepath("neovim-node-host")
else
	vim.g.loaded_node_provider = 0
end

if vim.fn.executable("neovim-ruby-host") == 1 then
	vim.g.ruby_host_prog = vim.fn.exepath("neovim-ruby-host")
else
	vim.g.loaded_ruby_provider = 0
end

vim.g.loaded_perl_provider = 0

----------------------------------------------------------------------------
--OPTIONS {{{1
-----------------------------------------------------------------------------
local opt = vim.opt
opt.relativenumber = false
opt.number = true
opt.tabstop = 2 -- insert 2 spaces for a tab
opt.softtabstop = 2 -- spaces per tab (when shifting)
opt.shiftwidth = 2 -- always use spaces instead of tabs
opt.expandtab = true -- convert tabs to spaces
opt.autoindent = true
opt.wrap = false -- display lines as one long line
opt.ignorecase = true -- Ignore case in search.
opt.smartcase = true
opt.cursorline = true
opt.termguicolors = true -- Colorscheme
opt.background = "dark"
opt.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position
opt.clipboard:append("unnamedplus")
opt.splitright = true -- force all vertical splits to go to the right of current window
opt.splitbelow = true -- force all horizontal splits to go below current window

opt.textwidth = 80
opt.backupcopy = "yes" -- overwrite files to update, instead of renaming + rewriting
opt.emoji = false
opt.synmaxcol = 300 -- do not highlight very long lines
opt.showmode = false -- Don't Display the mode you're in. since it's already shown on the statusline
opt.showmatch = true -- highlight matching [{()}]
opt.virtualedit = "block" -- allow cursor to move where there is no text in visual block mode
opt.whichwrap = "b,h,l,s,<,>,[,],~" -- allow <BS>/h/l/<Left>/<Right>/<Space>, ~ to cross line boundaries
opt.completeopt = "menu,menuone,noselect" -- mostly just for cmp
opt.title = true
opt.mouse = "a" -- allow the mouse to be used in neovim
opt.errorbells = false -- No flashing.
opt.scrolloff = 5 -- Start scrolling slightly before the cursor reaches an edge
opt.sidescrolloff = 5

opt.sidescroll = 3 -- Scroll sideways a character at a time, rather than a screen at a time
-- fix slight delay after pressing ESC then O http://ksjoberg.com/vim-esckeys.html
opt.timeoutlen = 1000 -- vim.opt.timeout timeoutlen=500 ttimeoutlen=100
opt.ttimeoutlen = 0
opt.hidden = true
opt.ruler = true -- show where you are
opt.tildeop = true -- Make tilde command behave like an operator.
opt.backup = false -- creates a backup file
opt.writebackup = false
opt.backupdir = string.format("%s%s", vim.fn.stdpath("data"), "/backup//") -- keep backup files out of the way
opt.backupdir:append(".")
opt.swapfile = false
opt.directory = string.format("%s%s", vim.fn.stdpath("data"), "/swap//") -- keep swap files out of the way
opt.directory:append(".")
opt.updatetime = 1000
opt.updatecount = 0 -- update swapfiles every 80 typed chars (I don't use swap files anymore)

vim.cmd("syntax sync minlines=256") -- start highlighting from 256 lines backwards
--Stop automatic newline continuation of comments
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")
