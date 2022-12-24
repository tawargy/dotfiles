

syntax enable                           " Enables syntax highlighing
set t_Co=256                            " Support 256 colors
set background=dark                     " tell vim what the background color looks like
set nowrap                              " Do not wrap lines. Allow long lines to extend as far as the line goes. 
set hidden                              " Required to keep multiple buffers open multiple buffers
set tabstop=2                           " Set tab width to 2 columns.  
set shiftwidth=2                        " Set shift width to 2 spaces.   
set expandtab                           " Use space characters instead of tabs.
set nobackup                            " Do not save backup files.
set scrolloff=5                         " Do not let cursor scroll below or above N number of lines when scrolling.
set sidescrolloff=5
set encoding=utf-8                      " The encoding displayed
set fileencoding=utf-8                  " The encoding written to file
set mouse=a                             " Enable your mouse
set ruler              			            " Show the cursor position all the time
set number                              " Line numbers
set cursorline                          " Highlight cursor line underneath the cursor horizontally.
set clipboard=unnamedplus               " Copy paste between vim and everything else
set nocompatible                        " be iMproved, required
set noshowmode 
filetype off                            " required
set termguicolors 
set incsearch                           " While searching though a file incrementally highlight matching characters as you type.
set ignorecase                          " Ignore capital letters during search.
" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase
set showmatch                           " Show matching words during a search.
set hlsearch                            " Use highlighting when doing a search.
set showcmd                             " Show partial command you type in the last line of the screen.
set tildeop
set textwidth=80


 set rtp+=~/.vim/bundle/Vundle.vim
 " call vundle#begin()
" Plugin 'VundleVim/Vundle.vim'
" Plugin 'preservim/nerdtree'
" Plugin 'arcticicestudio/nord-vim'
" Plugin 'morhetz/gruvbox'
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
" Plugin 'https://github.com/tpope/vim-commentary'
" Plugin 'https://github.com/ryanoasis/vim-devicons'
 " call vundle#end()           
 " filetype plugin indent on


" colorscheme nord
" let g:airline_theme='nord'

"keyMap
let g:mapleader = "\<Space>"



nnoremap <C-e> :NERDTreeToggle<CR>
" Use alt  to resize windows
nnoremap <M-up> <c-w>+
nnoremap <M-down> <c-w>- 
nnoremap <M-left> <c-w>>
nnoremap <M-right> <c-w><
" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>
"ESC, save, qiut
inoremap jk <Esc>
map <leader>s :w<CR>
map <leader>q :q<CR>

nnoremap <leader>/ :nohlsearch<CR>


let g:WebDevIconsUnicodeDecorateFolderNodes = 1

" Use a line cursor within insert mode and a block cursor everywhere else.
"
" Using iTerm2? Go-to preferences / profile / colors and disable the smart bar
" cursor color. Then pick a cursor and highlight color that matches your theme.
" That will ensure your cursor is always visible within insert mode.
"
" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
" let &t_SI = "\e[6 q"
" let &t_EI = "\e[2 q"
