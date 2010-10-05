syntax on

set background=dark
set autoindent
set showcmd

set scrolloff=3

" line numbering
set number
" F11 toggles wrapping long lines
map <F11> :set number!<bar>set number?<CR>
set linebreak


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

" F10 toggles wrapping long lines
map <F10> :set wrap!<bar>set wrap?<CR>

" cull trailing whitespace
nmap <silent> <C-F10> :%s,\s\+$,,e<CR>
vmap <silent> <C-F10> :s,\s\+$,,e<CR>

" cycle fast through buffers
nmap <C-PageUp>   :bn<CR>
nmap <C-PageDown> :bp<CR>
" and through errors
"nmap <m-n> :cn<cr>
"nmap <m-p> :cp<cr>

" check spelling.  on by default, <F12> toggles
set spell spelllang=en_gb
map <F12> :set spell!<bar>set spell?<CR>

