execute pathogen#infect()

" Enable vim colors in terminals
if !has("gui_running")
	set term=xterm
	set t_Co=256
	let &t_AB="\e[48;5;%dm"
	let &t_AF="\e[38;5;%dm"
endif
colorscheme gruvbox
set background=dark
"let g:gruvbox_termcolors=16

if (has("termguicolors"))
	set termguicolors  " enable 24 bit colors if supported
endif

set nocompatible
set enc=utf8
syntax enable

" Disable beeping
set vb t_vb=

set laststatus=2  " always display statusline
set noshowmode

" Permit butterfingers
cmap W w
cmap Q q

" remap split navigation to ctrl-*
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

let mapleader=" "

" Edit vimrc
nnoremap <leader>v :vsplit $MYVIMRC<cr>
augroup reload_vimrc 
	autocmd!
	autocmd BufWritePost $MYVIMRC source % 
augroup END 

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

" Toggle showing whitespace characters
let g:show_whitespace = 0
set list
nnoremap <leader>s :call ToggleSpecialChars()<cr> 
function! ToggleSpecialChars()
	if g:show_whitespace
		" Normal use of list is showing whitespace chars
		set listchars=tab:>\ ,nbsp:.,trail:.,eol:%
		let g:show_whitespace = 0
	else
		" Abuse list to place cursor at beginning tab
		set listchars=tab:\ \ ,
		let g:show_whitespace = 1
	endif
endfunction
call ToggleSpecialChars()

" Command - T
let g:CommandTCancelMap = ['<ESC>', '<C-c>']

" Vim Airline
"let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 1

" Python tabs to spaces
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
filetype plugin indent on
