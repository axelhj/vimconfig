augroup netrw_basic_fix
    autocmd!
    autocmd filetype netrw call s:Basic_fix()
augroup END
function! s:Basic_fix()
    noremap <buffer> <C-h> <C-w><C-h>
    noremap <buffer> <C-l> <C-w><C-l>
endfunction
"autocmd FileType netrw nnoremap <buffer> <C-l> <C-w><C-l>
