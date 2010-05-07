syntax on

set background=dark
set autoindent
set incsearch    " search-as-you-type
set nohlsearch
set linebreak
set showcmd

"set softtabstop=4

set scrolloff=3

autocmd BufRead *.txt set tw=0 

" line numbering
set number
highlight LineNr ctermfg=darkgrey
" F11 toggles wrapping long lines
map <F11> :set number!<bar>set number?<CR>

" make variables a different colour to comments.
highlight Comment ctermfg=darkgreen

" F5 toggles hlsearch
map <F5> :set hls!<bar>set hls?<CR>

" F10 toggles wrapping long lines
map <F10> :set wrap!<bar>set wrap?<CR>

" cull trailing whitespace
nmap <C-F10> :%s,\s\+$,,<CR>
vmap <C-F10> :s,\s\+$,,<CR>

" feed selected content through perltidy
vmap ,ptv :!perltidy<CR>

" F12 toggles spellchecking
set spelllang=en_gb
map <F12> :set spell!<bar>set spell?<CR>

" set up nice highlighting for nagios configs
"au BufRead,BufNewFile *nagios* set filetype=nagios
au BufRead,BufNewFile  */nagios*/*.cfg set filetype=nagios
au! Syntax nagios source ~/.vim/syntax/nagios.vim

au BufRead,BufNewFile decimate.cfg set filetype=python
au BufNewFile,BufRead *.tt2,*.html  set filetype=tt2html ts=2 expandtab
"au BufRead,BufNewFile dhcpd.conf set filetype=dhcpd

" highlight some useful terms in white-on-red
autocmd ColorScheme * highlight Todo ctermfg=white ctermbg=red
syn keyword mlbTodo contained containedin=Comment TODO FIXME NOTE DEBUG
"syn keyword mlbTodo TODO FIXME NOTE DEBUG
highlight def link mlbTodo Todo
highlight Todo ctermfg=white ctermbg=red

let perl_extended_vars = 1
let perl_want_scope_in_variables = 1
let perl_include_pod = 1

