" vim-plug plugins
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
call plug#end()

" NerdTree
autocmd vimenter * NERDTree
let NERDTreeShowHidden=1

" Airline
let g:airline_theme='base16_gruvbox_dark_hard'
