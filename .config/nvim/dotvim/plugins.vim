call plug#begin('~/.config/nvim/autoload/plugged')

" Plug 'dracula/vim', { 'as': 'dracula' }           "dracula theme
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"Plug 'https://github.com/pangloss/vim-javascript.git'
"Plug 'mxw/vim-jsx'
Plug 'christianchiarulli/nvcode-color-schemes.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/NERDTree'
Plug 'https://github.com/ryanoasis/vim-devicons'    "ICONS
" Plug 'kyazdani42/nvim-web-devicons'
Plug 'neovim/nvim-lspconfig'                        "lsp
Plug 'hrsh7th/nvim-compe'                           "compelte for lsp
Plug 'glepnir/lspsaga.nvim'
Plug 'ap/vim-css-color'
Plug 'jiangmiao/auto-pairs'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'lepture/vim-jinja'
Plug 'mhartington/formatter.nvim'
"Plug 'prettier/vim-prettier', { 'do': 'npm install'} 
"Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'Yggdroot/indentLine'
call plug#end()



