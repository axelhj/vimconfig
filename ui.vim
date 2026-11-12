let g:netrw_banner = 0

set listchars="tab:→ |,space:•,nbsp:␣,trail:¬,precedes:↯,extends:←"

function! PrunedPath()
  let home_escaped = escape(tr($HOME, '/', '\'), '\')
  let prefix_escape_pattern = '^\(\~\|' . home_escaped . '\)'
  " Prune $HOME if matched and always substitute for ellipsis
  return substitute(
    \tr(expand('%:p'), '/', '\'),
    \prefix_escape_pattern,
    \'...',
    \''
  \)
endfunction

set statusline=%{&buftype=='terminal'?'':winwidth(0)?PrunedPath().'\ '.repeat('─',max([0,winwidth(0)-strlen(PrunedPath())-1])):'\ '}
