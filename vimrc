let mapleader = " "

set hidden
set number

let s:path = expand('<sfile>:h')
let &backupdir = s:path . '/state/backup//'
let &directory = s:path . '/state/swap//'
let &undodir = s:path . '/state/undo'
set undofile
let &viminfofile = s:path . '/state/viminfo'

colorscheme lunaperche
"autocmd VimEnter * {
"  enew
"}
set shortmess+=I
nmap \ <Cmd>Ex<Cr>
execute 'nnoremap <Leader>0 <Cmd>source' fnameescape(expand('<sfile>:h') . '/vimrc') '<Cr>'
set tabstop=2
set shiftwidth=2
set expandtab
set scrolloff=2
set splitright
set splitbelow
set timeoutlen=1700
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
tnoremap <C-h> <C-w><C-h>
tnoremap <C-l> <C-w><C-l>
tnoremap <C-j> <C-w><C-j>
tnoremap <C-k> <C-w><C-k>
nnoremap <M-w> <Cmd>w<Cr>
nnoremap <M-d> 4<C-e>
nnoremap <M-u> 4<C-y>
nnoremap <M-v> "*p
nnoremap <M-S-v> "*P
tnoremap <M-v> <C-w>"*
inoremap <M-v> <Esc>"*pi
inoremap <M-S-v> <Esc>"*Pi
vnoremap <M-c> mo"*y`o
nnoremap <M-c> "*yy
nnoremap <Tab> <Cmd>bn<Cr>
nnoremap <Leader>w <C-w><C-c>
nnoremap <Leader>W <Cmd>bd!<Cr>
nnoremap <expr> x (!&modifiable) ? '<Cmd>bd!<Cr>' : 'x'
nnoremap <Leader>fb <Cmd>buffers<Cr>:b

source <sfile>:h/fix.vim
source <sfile>:h/old.vim
source <sfile>:h/term.vim
source <sfile>:h/termlnc.vim
source <sfile>:h/ui.vim
source <sfile>:h/gui.vim
