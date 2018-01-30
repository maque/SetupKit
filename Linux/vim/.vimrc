set tabstop=3
set wildmenu
set ignorecase
set hlsearch
set incsearch
set showmatch
set encoding=utf8
syntax enable
set background=dark
colorscheme solarized
set nobackup
set nowb
set noswapfile
set number
set backspace=eol,start,indent
set whichwrap+=<,>h,l
set ai
set si
set list listchars=tab:>-,trail:.,eol:$
map <space> /
map <c-space> ?
let mapleader = ","
let g:mapleader = ","
nnoremap <silent> <C-T> :tab new<CR>
nnoremap <silent> <C-O> :wincmd gf<cr>
nnoremap <silent> <A-Left> :tabprev<cr>
nnoremap <silent> <A-Right> :tabnext<cr>
nnoremap <C-X> :w!<cr>
nnoremap <silent> <C-N> :set list!<cr> :set number!<cr>
let g:solarized_termcolors=256
let g:solarized_termtrans=1
