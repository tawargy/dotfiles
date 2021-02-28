call plug#begin('~/.config/nvim/autoload/plugged')
   "theme
  Plug 'dracula/vim', { 'as': 'dracula' }
  
  Plug 'neoclide/coc.nvim', {'branch': 'release'}


  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " Plug 'sheerun/vim-polyglot'

    " File Explorer
    "Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
   Plug 'jiangmiao/auto-pairs'

call plug#end()

colorscheme dracula

" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Switch to your current theme
let g:airline_theme = 'dracula'
