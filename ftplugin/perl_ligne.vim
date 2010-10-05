" Feed selected content through perltidy
vmap ,pt :!perltidy<CR>

let perl_extended_vars = 1
let perl_want_scope_in_variables = 1
let perl_include_pod = 1

" Allow % to bounce between angles too
set matchpairs+=<:>

set iskeyword+=:

" try to guess the package name based on the name of the file
fun! ExpectedPackageName()
  return substitute(substitute(expand("%:p:r"), '^.*lib/\?', '', ''), '/', '::', 'g')
endfun

