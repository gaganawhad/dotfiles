" *** Plugin settings ***
"
" YouCompleteMe
" The following is a hack to make the carriage return key function as the
" 'accept' action when using YouCompleteMe plugin for autocompletion
" See https://github.com/Valloric/YouCompleteMe/issues/232#issuecomment-299677328
imap <expr> <CR> pumvisible() ? "\<c-y>" : "\<CR>"

" Ctrl-p
" Set max depth for cntrl-p plugin
" picked up from: https://github.com/kien/ctrlp.vim/issues/234#issuecomment-22992830
let g:ctrlp_max_files=8000 " Set to 0 for no limit
" let g:ctrlp_max_depth=40 " Uncomment if depth isn't sufficient
" Search through hidden files / dotfiles
" https://github.com/kien/ctrlp.vim/blob/master/doc/ctrlp.txt
let g:ctrlp_show_hidden=1 " Set to 1 to show hidden files
" While Cntrl+P has it's own way of ignoring files, (search for
" `ctrlp_custom_ignore`), I am using a wildignore to have it affect more than
" just Cntrl=P. I might realize later that this was a bad idea and then fall
" back to `ctrlp_custom_ignore`
" Developed from
" https://github.com/wcamarao/dotfiles/blob/master/model/vimrc#L39-L42
" Documentation was found here: http://vimdoc.sourceforge.net/htmldoc/options.html#'wildignore'
set wildignore+=**/node_modules
set wildignore+=**/vendor
set wildignore+=**/tmp
set wildignore+=**/log
set wildignore+=**/.git
set wildignore+=**/public/images
set wildignore+=**/public/client*
set wildignore+=**/app/assets/images*

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

" *** Plugin settings end *** 

"" Allow copy/paste to work correctly
"" See https://stackoverflow.com/a/2842811/2980914
"if has("unix")
  "let s:uname = system("echo -n \"$(uname)\"")
  "if !v:shell_error && s:uname == "Linux"
    "set clipboard=unnamed
  "elseif !v:shell_error && s:uname == "Darwin"
    "set clipboard=unnamedplus
  "endif
"endif

" Let's try this from here: https://stackoverflow.com/a/30691754/2980914
set clipboard^=unnamed,unnamedplus

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


" Highlight columns for line length
" Developed from
" https://stackoverflow.com/questions/2447109/showing-a-different-background-colour-in-vim-past-80-characters
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="119,".join(range(120,999),",")
