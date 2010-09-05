" deactivate annoying backwards compatibility
set nocompatible

" better backspace behavior
set backspace=indent,eol,start

" set my preferred colorscheme
colorscheme fruity

" enable automatic title setting
set title

" set title to 'filepath [vim]'
set titlestring=%F\ [vim]

" enable filetype plugins and indentation
filetype on
filetype plugin on
filetype indent on

" highlight whitespace at the end of the line and mixed tabs/spaces
highlight UnwantedSpaces ctermbg=red guibg=red
match UnwantedSpaces /\s\+$\|\s\t\|\t\s/

" enable smart indentation
set smartindent
" deactivate it for hashes
inoremap # #

" make the command line two lines high and change the statusline display
set cmdheight=2
set laststatus=2
set statusline=[%l,%c\ %P%M]\ %F\ %r%h%w
set showcmd
set number

" general tab settings
set smarttab
set tabstop=8

" use utf-8 as default encoding
set enc=utf-8

" prefer unix over other fileformats
set fileformats=unix,mac,dos

" don't bell or blink annoyingly
set noerrorbells
set vb t_vb=

" keep some lines at the beginning/end of the part of the file we are
" viewing
set scrolloff=5

" hide some files
let g:netrw_list_hide='^\.;.\(pyc\|pyo\|o\)$'

" map :BufClose to bq
cnoreabbr <expr> bq 'BufClose'

" add a mako filetype
autocmd BufNewFile,BufRead *.mako setlocal ft=mako

" use the restructured text filetype for txt files
autocmd BufNewFile,BufRead *.txt setlocal ft=rst

" remove the menu and toolbar. I don't use them so they are just wasting space
set guioptions-=
set guioptions-=m
set guioptions-=T
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" ignore case when searching
set ignorecase

" don't ignore case if mixed cases are used
set smartcase

" enable hidden buffers
set hidden

" customize the wildmenu
set wildmenu
set wildignore=*.dll,*.o,*.pyc,*.pyo,*.bak,*.swp,*.exe,*.jpg,*.jpeg,*.png,*.gif

" make the home key behave like ^
map <Home> ^
imap <Home> <Esc>^i

" highlight anything over the 80 column limit
highlight OverLength ctermbg=red guibg=red
match OverLength /\%81v.\+/

" set leader to ','
let mapleader=","

" configure :FufFile to be on ',e', also pattern is prefixed with **/ this
" way the entire tree is searched
nmap <leader>e :FufFile **/<CR>

" store backupfiles in ~/.vim/sessions
set backupdir=~/.vim/sessions
set dir=~/.vim/sessions
