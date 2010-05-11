syntax on

set background=dark
set autoindent
set showcmd

set scrolloff=3

" line numbering
set number
highlight LineNr ctermfg=darkgrey
" F11 toggles wrapping long lines
map <F11> :set number!<bar>set number?<CR>
set linebreak

" Make comments less garish
highlight Comment ctermfg=darkgreen


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

" check spelling.  on by default, <F12> toggles
set spell spelllang=en_gb
map <F12> :set spell!<bar>set spell?<CR>

" highlight some useful terms in white-on-red
autocmd ColorScheme * highlight Todo ctermfg=white ctermbg=red
"syn keyword mlbTodo contained containedin=Comment TODO FIXME NOTE DEBUG
"syn keyword mlbTodo TODO FIXME NOTE DEBUG
"highlight def link mlbTodo Todo
highlight Todo ctermfg=white ctermbg=red

