function! s:HasVisTerm() abort
  return !empty(filter(tabpagebuflist(),
    \ 'getbufvar(v:val, "&buftype") ==# "terminal"'))
endfunction
nnoremap <expr> <Leader>t (<SID>HasVisTerm() ?
 \   '<Cmd>vert terminal ++noclose<Cr>' :
 \   '<Cmd>terminal ++noclose<Cr>'
 \ ) . '<Cmd>call timer_start(200, feedkeys("\<lt>C-w>w", "n"))<Cr>'
tnoremap <C-x> <C-\><C-n>
" The terminal does not update in normal mode, just switch win instead
"autocmd TerminalWinOpen * call timer_start(0, feedkeys("\<C-\>\<C-n>", 'n'))
"autocmd TerminalWinOpen * call timer_start(200, feedkeys("\<C-w>w", 'n'))
autocmd WinEnter * if &buftype ==# 'terminal' | call timer_start(200, {-> feedkeys("\<C-\>\<C-n>G", "n")}) | endif
