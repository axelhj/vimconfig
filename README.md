# The basics

This is prepared to simply clone into %USERPROFIEL%\vimfiles in Windows. All mappings will work if ripgrep (rg) and sharkdp/fd (fd) is installed on Windowws since there are no fallbacks configured.

# Mappings (find, navigate and run things)
- `<Leader>` is `<Space>`

## Find files and buffers
- `<Leader>ff` This invokes oldfiles. Press `<Esc>` to hide it.
- `<Leader>e` This works kind of like `:b` followed by a number but in a mapping and for oldfiles. `1<Leader>e` opens the first oldfile. Without a count, it is the same as `<Leader>ff`
- `<Leader>s` and `<M-s>` Prepares silent grep! in the cmd. Grepprg is setup to send the grep-pattern to rg.
- `<Leader><Leader>` This is used to call the usercommand Fd which simply sends the "search" to `fd` and populates the quickfix.
- `<Leader>fv` In visual selection, this sends the current selection to vim-grep. It does not escape regex-syntax though.
- `fd`, `rg`, builtin `grep` respects .gitignore or mostly respects .gitignore.
- The cwd in vim follows the edited file using project root-finding logic.

## Terminals
- `<Leader>t` will open a terminal as a split. The first terminal in a tab is horizontal, each following will be a vert terminal. No-close is used to not cause vim to exit accidentally. The command invokes `<C-w>w` to leave the terminal as the user would otherwise go immediately to insert mode (run-mode) in the terminal. If the terminal is then re-visited, an autocommand will go to terminanl-mode which is analogous to normal mode.
- `:Fult` opens a full screen terminal in the current buffer, provided that the current windows is fullscreen. Otherwise it could be made fullscreen with `<C-w>o`.

## Buffer management 
- `x` is mapped to close unmodifiable buffers. Useful f.ex with a terminal as `<C-d>x` to stop and hide a terminal. Supposed to work with
- `\` Open Ex (netrw) to browse files. The cwd in vim follows the edited file by finding `.git` or `package.json` which designates the root-folder.

## Windows
- `<C-h>`, `<C-l>`, `<C-j>` and `<C-k>` are mapped to `<C-w>` followed by the corresponding letter. Does not wrap around the screen.
- `<M-u>` and `<M-d>` scrolls four rows up & down respectively.

## Run jobs
- `<M-1>`, `<M-2>`, `<M-3>`, `<M-4>`, `<M-5>`, `<M-6>`, `<M-7>`, `<M-8>`, `<M-9>` and `<M-0>` opens the vimfiles dir tasksfile.txt and executes the corresponding line number 1-10 in a new terminal. Subsequent invocations lands in a vertical split on the side of the most recent terminal.
- `<C-1>`, `<C-2>`, `<C-3>`, `<C-4>`, `<C-5>`, `<C-6>`, `<C-7>`, `<C-8>`, `<C-0>` and `<C-1>` are mapped as the M-counterparts.

# Other things
- Undofile, swap and save-backup are activated by default. The pre-configured font is IntoneMono NFM (Intel One Monospace) which is recommended.
