
colorscheme desert

set nocompatible  " use VIM settings instead of VI settings
syntax enable     " syntax highlighting
set hidden        " leave hidden buffers open
set backspace=indent,eol,start
let c_no_trail_space_error = 1
set number                    " show line numbers
set nuw=8                     " width of line numbers' margin
set ruler                     " show cursor position in status bar

set wildmenu


" reload files changed outside vim
set autoread

" map double click to match search
" map <2-LeftMouse> *
" imap <2-LeftMouse> <c-o>*

" enable file type detection and indenting
filetype plugin indent on
set ai  " autoindent

" highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/


" line wrapping
set wrap
set textwidth=0 wrapmargin=0
map \W :set wrap<CR>        " toggle wrap/nowrap with \W and \w
map \w :set nowrap<CR>

let loaded_matchparen = 0

" no backups
set noswapfile
set nobackup
set nowritebackup

" search things
set hlsearch "highlight search
set incsearch "find next match as you type
map \l :noh<CR>  "press \l to remove search highlighting
set ignorecase
set smartcase

"splits
set splitright
set splitbelow

set laststatus=2 "show status line
set history=1000

"set guifont=B\&H\ LucidaTypewriter\ 12

" move in a sane manner thru wrapped lines
nmap j gj
nmap k gk

" window navigation
map <C-j> <C-W>j<C-W>_
map <C-k> <C-W>k<C-W>_
map <C-h> <C-W>h<C-W>_
map <C-l> <C-W>l<C-W>_



" switch between tab modes
nmap \t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
nmap \T :set expandtab tabstop=8 shiftwidth=8 softtabstop=4<CR>
nmap \M :set noexpandtab tabstop=8 softtabstop=4 shiftwidth=4<CR>
nmap \m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>


" source ~/.vim/plugin/cscope_maps.vim


