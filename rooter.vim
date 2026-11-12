function! s:Root() abort
  if &buftype !=# '' || !&modifiable || mode() !=# 'n' | return | endif
  let l:d = expand('%:p:h')
  while l:d !=# fnamemodify(l:d, ':h')
    if isdirectory(l:d . '/.git') || filereadable(l:d . '/package.json')
      execute 'cd' fnameescape(l:d) | return
    endif
    let l:d = fnamemodify(l:d, ':h')
  endwhile
  execute 'cd' fnameescape(expand('~'))
endfunction

autocmd BufEnter,WinEnter * call s:Root()
