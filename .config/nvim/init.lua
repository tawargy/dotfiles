     
-------------------------------------------------------------------------------
-- GENERAL {{{1
-------------------------------------------------------------------------------
vim.g.mapleader = ' '
vim.g.maplocalleader = ','
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

if vim.fn.executable 'python3' == 1 then
  vim.g.python3_host_prog = vim.fn.exepath 'python3'

  vim.g.loaded_python3_provider = 0
end

if vim.fn.executable 'neovim-node-host' == 1 then
  vim.g.node_host_prog = vim.fn.exepath 'neovim-node-host'
else
  vim.g.loaded_node_provider = 0
end

if vim.fn.executable 'neovim-ruby-host' == 1 then
  vim.g.ruby_host_prog = vim.fn.exepath 'neovim-ruby-host'
else
  vim.g.loaded_ruby_provider = 0
end

vim.g.loaded_perl_provider = 0

-----------------------------------------------------------------------------
 --OPTIONS {{{1
-----------------------------------------------------------------------------
 --spaces per tab
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
-- spaces per tab (when shifting)
vim.opt.shiftwidth = 2
-- always use spaces instead of tabs
vim.opt.expandtab = true
vim.opt.textwidth = 80
vim.opt.wrap = false
vim.opt.signcolumn = 'yes'
vim.opt.emoji = false
--vim.opt.formatoptions:remove('cro') 
vim.v.clipboard = 'unnamedplus'  -- Copy paste between vim and everything else
-- start highlighting from 256 lines backwards
vim.cmd 'syntax sync minlines=256'
-- do not highlight very long lines
vim.opt.synmaxcol = 300
-- Don't Display the mode you're in. since it's already shown on the statusline
vim.opt.showmode = false
-- highlight matching [{()}]
vim.opt.showmatch = true
-- allow cursor to move where there is no text in visual block mode
vim.opt.virtualedit = 'block'
-- allow <BS>/h/l/<Left>/<Right>/<Space>, ~ to cross line boundaries
vim.opt.whichwrap = 'b,h,l,s,<,>,[,],~'
-- highlight matching [{()}]
vim.opt.showmatch = true
vim.opt.completeopt = 'menu,menuone,noselect'
vim.opt.title = true
vim.opt.mouse = 'a'
-- No flashing.
vim.opt.errorbells = false
-- Start scrolling slightly before the cursor reaches an edge
vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 5
vim.opt.number=true
-- Scroll sideways a character at a time, rather than a screen at a time
vim.opt.sidescroll = 3
-- Ignore case in search.
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- fix slight delay after pressing ESC then O http://ksjoberg.com/vim-esckeys.html
-- vim.opt.timeout timeoutlen=500 ttimeoutlen=100
vim.opt.timeoutlen = 1000
vim.opt.ttimeoutlen = 0

vim.opt.hidden = true
-- show where you are
vim.opt.ruler = true
-- Make tilde command behave like an operator.
vim.opt.tildeop = true
-- Colorscheme
vim.opt.termguicolors= true
vim.opt.background= 'dark'

vim.opt.backupcopy = 'yes' -- overwrite files to update, instead of renaming + rewriting
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.backupdir = string.format('%s%s', vim.fn.stdpath 'data', '/backup//') -- keep backup files out of the way
vim.opt.backupdir:append '.'

vim.opt.swapfile = false
vim.opt.directory = string.format('%s%s', vim.fn.stdpath 'data', '/swap//') -- keep swap files out of the way
vim.opt.directory:append '.'

vim.opt.updatetime = 1000
vim.opt.updatecount = 0 -- update swapfiles every 80 typed chars (I don't use swap files anymore)

vim.g.tokyonight_style = "storm"
vim.g.tokyonight_italic_functions = true
-------------------------------
-- theme
-------------------------------
--vim .cmd('colo dracula')
vim.cmd('colo tokyonight')
--vim.cmd('colo nightfox')

------------------------------------------------------
-----------------------------------------------------
-- PLUGINS {{{1
--------------------------------
require ('plugins')
--------------------------------
require ('config')
--keymap
--------------------------------
require'keymap'


