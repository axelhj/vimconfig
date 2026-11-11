let s:file = split(&runtimepath, ',')[0] . '/tasksfile.txt'

function! s:Run(n) abort
  let l:cmd = get(readfile(s:file), a:n - 1, '')
  let l:terms = filter(tabpagebuflist(), 'getbufvar(v:val, "&buftype") ==# "terminal"')
  if !empty(l:terms) | call win_gotoid(bufwinid(max(l:terms))) | endif
  let l:buf = term_start(&shell, {'vertical': !empty(l:terms)})
  if !empty(l:cmd) | call term_sendkeys(l:buf, l:cmd . "\r") | endif
endfunction

for s:i in range(10)
  execute printf('nnoremap <M-%d> <Cmd>call <SID>Run(%d)<CR>', s:i, s:i ? s:i : 10)
  execute printf('nnoremap <C-%d> <Cmd>call <SID>Run(%d)<CR>', s:i, s:i ? s:i : 10)
endfor
