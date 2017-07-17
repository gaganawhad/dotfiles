" Allow copy/paste to work correctly
set clipboard=unnamedplus

" filetype is on by default. Turn on indent and plugin along with it.
" This is recommened for NERD Commenter, but is probably a good idea anyway.
" :help :filetype-overview for more info.
filetype plugin indent on

"Set tabsize to 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Set autoindent
set autoindent

" Turn on syntax highlighting
syntax on

" Set colorscheme
colorscheme herald

" Display linenumbers
set number

" Do not wrap the text 
set nowrap


" Ben Orienstein recommended using relative numbering to help jump
" to lines
" Setting relative numbering in vim by default
" set relativenumber

" * Search & Replace

" make searches case-insensitive, unless they contain upper-case letters:
set ignorecase
set smartcase

" show the 'best match so far' as search strings are typed:
set incsearch
" highlight all search matches
set hlsearch

"Autoread when file is updated outside of vim or on git branch changes
set autoread
au FocusGained,BufEnter * :silent! !
au FocusLost,WinLeave * :silent! w
