set nocompatible
set history=1000
set ruler
set modeline  " debian turns this off by default.  it's annoying, even if it is safer.

syntax on

set background=dark
set autoindent
set showcmd
set linebreak  " break lines at word boundaries

set scrolloff=3

""" Line numbering

set number
" F11 toggles wrapping long lines
map <F11> :set number!<bar>set number?<CR>


""" Highlighting

" Make comments and line numbers less garish
highlight Comment ctermfg=darkgreen
highlight LineNr  ctermfg=darkgrey

" Make TODO flags more garish
highlight Todo ctermfg=white ctermbg=red


""" Search

set incsearch    " search-as-you-type
set nohlsearch
" F5 toggles hlsearch
map <F5> :set hls!<bar>set hls?<CR>

set grepprg=ack


""" Miscellanea

" toggle case-sensitive search
map <F9> :set ignorecase!<bar>set ignorecase?<CR>

" F10 toggles wrapping long lines
map <F10> :set wrap!<bar>set wrap?<CR>

" cull trailing whitespace
nmap <silent> <C-F10> :%s,\s\+$,,e<CR>
vmap <silent> <C-F10> :s,\s\+$,,e<CR>

" cycle fast through buffers
nmap <C-PageUp>   :bn<CR>
nmap <C-PageDown> :bp<CR>
" and through errors
nmap <M-PageDown> :cn<CR>
nmap <M-PageUp>   :cp<CR>

" <F12> toggles spell-checking
set spelllang=en_gb
map <F12> :set spell!<bar>set spell?<CR>


""" Abbreviations

iab ####  ################################################################################


""" Skeleton files

" Automatically set the package line in Perl modules.
autocmd BufNewFile *.pm 0r ~/.vim/skeleton/perl.pm | $d | 1s/{{{PACKAGE}}}/\=ExpectedPackageName()/
autocmd BufNewFile *.pl 0r ~/.vim/skeleton/perl.pl | $d
autocmd BufNewFile *.t  0r ~/.vim/skeleton/perl.t  | $d

