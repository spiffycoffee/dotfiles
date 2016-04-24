execute pathogen#infect()

" Enable vim colors in terminals
if !has("gui_running")
	set term=xterm
	set t_Co=256
	let &t_AB="\e[48;5;%dm"
	let &t_AF="\e[38;5;%dm"
endif
colorscheme gruvbox
let g:gruvbox_termcolors=16
set background=dark

set enc=utf8
"let g:airline_powerline_fonts = 0
set laststatus=2  " always display statusline
set noshowmode

:command W w   " permit butterfingers
:command Wq wq " permit butterfingers

" remap split navigation to ctrl-*
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

let mapleader=" "

" Command - T
let g:CommandTCancelMap = ['<ESC>', '<C-c>']

set nocompatible

" Disable beeping
set vb t_vb=

" Tabs count as this many columns 
set tabstop=4 
" Move over this many columns when shifting ">>"
set shiftwidth=4
" How many columns when hitting tab in insert mode
set softtabstop=4

" Search highlighting
set incsearch hlsearch
set ignorecase
set smartcase

" highlight line cursor is on
set cursorline
" Set warning track position
set colorcolumn=80
" Enable line numbers
set number
set numberwidth=4

" Automatically create folds based off of indent 
set foldmethod=indent
" Start with folds open
set foldlevelstart=99

" Cursor goes to beginning of tab
" NOTE: extra space before EOL 
set list listchars=tab:\ \ 


" Python tabs to spaces
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
filetype plugin indent on
