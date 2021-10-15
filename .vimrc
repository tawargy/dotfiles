
" let g:mapleader = "\<Space>"

syntax enable                           " Enables syntax highlighing
" set nocompatible                        " be iMproved, required
" filetype off                            " required
" set hidden                              " Required to keep multiple buffers open multiple buffers
" set nowrap                              " Display long lines as just one line
" set encoding=utf-8                      " The encoding displayed
" set pumheight=10                        " Makes popup menu smaller
" set fileencoding=utf-8                  " The encoding written to file
" set ruler              			            " Show the cursor position all the time
" set cmdheight=2                         " More space for displaying messages
" set iskeyword+=-                      	" treat dash separated words as a word text object"
" set mouse=a                             " Enable your mouse
" set splitbelow                          " Horizontal splits will automatically be below
" set splitright                          " Vertical splits will automatically be to the right
" set t_Co=256                            " Support 256 colors
" set conceallevel=0                      " So that I can see `` in markdown files
" set tabstop=2                           " Insert 2 spaces for a tab
" set shiftwidth=2                        " Change the number of space characters inserted for indentation
" set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
" set expandtab                           " Converts tabs to spaces
" set smartindent                         " Makes indenting smart
" set autoindent                          " Good auto indent
" set laststatus=0                        " Always display the status line
" set number                              " Line numbers
" set cursorline                          " Enable highlighting of the current line
" set background=dark                     " tell vim what the background color looks like
" set showtabline=2                       " Always show tabs
" "set noshowmode                          " We don't need to see things like -- INSERT -- anymore
" "set nobackup                            " This is recommended by coc
" "set nowritebackup                       " This is recommended by coc
" "set shortmess+=c                        " Don't pass messages to ins-completetion-menu by coc
" set updatetime=300                      " Faster completion
" set timeoutlen=500                      " By default timeoutlen is 1000 ms
" set formatoptions-=cro                  " Stop newline continution of comments
" set clipboard=unnamedplus               " Copy paste between vim and everything else
" " set undodir=~/.vim/undodir
" " set undofile

set colorcolumn=80

highlight ColorColumn ctermbg=0 guibg=lightgrey

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
 Plugin 'preservim/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'leafgarland/typescript-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ycm-core/YouCompleteMe', {'do': './install.py --tern-completer'}
Plugin 'https://github.com/tpope/vim-commentary'
Plugin 'https://github.com/ap/vim-css-color'
Plugin 'https://github.com/ryanoasis/vim-devicons'
Plugin 'mattn/emmet-vim'
Plugin 'prettier/vim-prettier'
call vundle#end()           
filetype plugin indent on


colorscheme gruvbox



nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


let g:WebDevIconsUnicodeDecorateFolderNodes = 1

