"  *******
"  General
"  *******
"
" 
set nocompatible " Use vim defaults rather than vi defaults. 

" Map Leader to space
let mapleader = " "


" Highlight the current line the cursor is on
set cursorline
" Highlight the current column the cursor is on
" set cursorcolumn

" Flashes matching brackets or parentheses
set showmatch " This causes the cursor to flash the matching braket or parentheses when you insert the closing one
" set matchtime=3 " You can make the matchtime faster. Default is 5.

" https://github.com/thoughtbot/dotfiles/blob/21055dff633feea87bc9526efb5b2fcc04bc025e/vimrc#L4
set backspace=2   " Backspace deletes like most programs in insert mode
set noswapfile    " Disable storing swap files https://github.com/thoughtbot/dotfiles/blob/21055dff633feea87bc9526efb5b2fcc04bc025e/vimrc#L7
" Set temporary directory (don't litter local dir with swp/tmp files)
" set directory=/tmp/
set autoindent " Set autoindent
set number " Display linenumbers
set nowrap " Do not wrap the text 
set clipboard^=unnamed,unnamedplus " Allow copy/paste to work correctly https://stackoverflow.com/a/30691754/2980914

"Set tabsize to 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab
" When scrolling off-screen do so 3 lines at a time, not 1
set scrolloff=3

" enable setting title
set title
" configure title to look like: Vim /path/to/file
set titlestring=VIM:\ %-25.55F\ %a%r%m titlelen=70

" Set autoread
" This lets gvim reload the file when changes happen from elsewhere
set autoread

syntax on " Turn on syntax highlighting
colorscheme herald " Set colorscheme
highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000 " highlighting for YouCompleteMe autocompletion menu
highlight MatchParen guibg=#FFA500 guifg=#1F1F1F gui=none cterm=bold,reverse

"  ****************
"  Search & Replace
"  ****************
"
" make searches case-insensitive, unless they contain upper-case letters:
set ignorecase
" assume the /g flag on :s substitutions to replace all matches in a line:
set gdefault
set smartcase
set incsearch " show the 'best match so far' as search strings are typed:
set hlsearch " highlight all search matches
nnoremap <esc><esc> :noh<return><esc> " stop highlighting search results after pressing escape key

" *******
" Windows
" *******
"
" Use leader instead of Cntrl for window splits
" See more information here: https://codeincomplete.com/posts/split-windows-and-tabs-in-vim/
nnoremap <leader>wn <C-w>n " new horizontal split (editing a new empty buffer)
nnoremap <leader>ws <C-w>s " split window horizontally (editing current buffer)
nnoremap <leader>wv <C-w>v " vsplit window vertically (editing current buffer)
nnoremap <leader>wc <C-w>c " close window
nnoremap <leader>wo <C-w>o " close all windows, leaving :only the current window open
nnoremap <leader>ww <C-w>w " go to next window
nnoremap <leader>wp <C-w>p " go to previous window
nnoremap <leader><Up> <C-w><Up> "  go to window above
nnoremap <leader><Down> <C-w><Down> " go to window below
nnoremap <leader><Left> <C-w><Left> " go to window on left
nnoremap <leader><Right> <C-w><Right> " go to window on right

nnoremap <leader><Tab> <C-W>w
nnoremap <leader><Bar> <C-W>v<C-W><Right>
nnoremap <leader>-     <C-W>s<C-W><Down>

" Quicker window movement
" From here: https://github.com/thoughtbot/dotfiles/blob/21055dff633feea87bc9526efb5b2fcc04bc025e/vimrc#L142-L146
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
nnoremap <leader>h <C-w>h


" ***********************
" Page & Cursor Movements
" ***********************
"
" Quiker page movement
" Use leader instead of Cntrl for page movement
nnoremap <leader>u <C-u>
nnoremap <leader>d <C-d>
nnoremap <leader>f <C-f>
nnoremap <leader>b <C-b>
 
" Highlight columns for line length
" Developed from
" https://stackoverflow.com/questions/2447109/showing-a-different-background-colour-in-vim-past-80-characters
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="201,".join(range(201,999),",")

" *******
" Plugins
" *******
"
" *** YouCompleteMe ***
"
" The following is a hack to make the carriage return key function as the
" 'accept' action when using YouCompleteMe plugin for autocompletion
" See https://github.com/Valloric/YouCompleteMe/issues/232#issuecomment-299677328
imap <expr> <CR> pumvisible() ? "\<c-y>" : "\<CR>"


" *** UltiSnips ***
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<leader>j"
" let g:UltiSnipsJumpForwardTrigger="<leader>j"
" let g:UltiSnipsJumpBackwardTrigger="<leader>k"


" *** Ctrl-p ***
"
" Set max depth for cntrl-p plugin
" picked up from: https://github.com/kien/ctrlp.vim/issues/234#issuecomment-22992830
let g:ctrlp_max_files=8000 " Set to 0 for no limit
" let g:ctrlp_max_depth=40 " Uncomment if depth isn't sufficient
"
" Hidden files
"
" Search through hidden files / dotfiles
" https://github.com/kien/ctrlp.vim/blob/master/doc/ctrlp.txt
let g:ctrlp_show_hidden=1 " Set to 1 to show hidden files

" Ignoring files
"
" While Cntrl+P has it's own way of ignoring files, (search for
" `ctrlp_custom_ignore`), I am using a wildignore to have it affect more than
" just Cntrl=P. I might realize later that this was a bad idea and then fall
" back to `ctrlp_custom_ignore`
" Developed from
" https://github.com/wcamarao/dotfiles/blob/d8f5c7812d851299dfa40ac5e12768ff5c99f252/model/vimrc#L39-L42
" Documentation was found here: http://vimdoc.sourceforge.net/htmldoc/options.html#'wildignore'
set wildignore+=**/node_modules
set wildignore+=**/vendor
set wildignore+=**/tmp
set wildignore+=**/log
set wildignore+=**/.git
set wildignore+=**/public/images
set wildignore+=**/public/client*
set wildignore+=**/app/assets/images*
set wildignore+=**/db/dumps*

" Caching
"
" Enable Cntrl+P caching
" Documentation at
" https://github.com/kien/ctrlp.vim/blob/564176f01d7f3f7f8ab452ff4e1f5314de7b0981/doc/ctrlp.txt#L206-L224
" Enable per-session cachin
" Note: you can quickly purge the cache by pressing <F5> while inside CtrlP.
let g:ctrlp_clear_cache_on_exit = 1
" Set the directory to store the cache files: >
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
" Dont follow symlinks
 let g:ctrlp_follow_symlinks = 0

" Faster grepping
"
" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --vimgrep

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
 

" *** NERD Commenter ***
"
" Filetype is on by default.
" Turn on indent and plugin along with it.
" This is recommened for NERD Commenter, but is probably a good idea anyway.
" :help :filetype-overview for more info.
filetype plugin indent on

" See https://github.com/scrooloose/nerdcommenter#settings
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'


" *** Vim RuboCop ***
"
" Add keyboard shortcut for rubocop autocorrect
" Idea from https://github.com/ngmy/vim-rubocop#keyboard-shortcuts
nmap <Leader>ra :RuboCop<space>-a<CR>

" *****
" Other
" *****
"
" *** Enable default matchit plugin ***
" It helps with using % for matching `do` with corresponding `end` in ruby
runtime macros/matchit.vim "See https://stackoverflow.com/a/23841239

" Local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
