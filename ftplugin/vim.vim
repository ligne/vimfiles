setlocal sw=2 ts=2 et
setlocal keywordprg=:help

" split help to the right
nmap K :exe ":vertical rightb help ".expand("<cword>")<CR>

