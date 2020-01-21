set encoding=utf-8

set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set modelines=0   " Disable modelines as a security precaution
set nomodeline

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

" Numbers
set number
set numberwidth=5

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" Wrapping

au BufRead,BufNewFile *.md setlocal textwidth=80

" Get off my lawn

