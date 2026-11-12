if executable("rg") == 1
  let ignore = "--glob !**/node_modules/**/* --glob=!**/.git/**/*"
  let &grepprg='rg -u -u ' . ignore . ' -F --path-separator \ --vimgrep'
  set grepformat=%f:%l:%c:%m
end

nnoremap <Leader>s :silent grep! 
nnoremap <M-s> :silent grep! 

vnoremap <Leader>fv y:silent grep! <C-r>"<Cr>:copen<Cr>
"-- Vimgrep - Ripgrep
"vim.keymap.set("v", "<Leader>fv", function()
"  local buf_name = vim.fn.expand("%"):gsub("%\\", "."):gsub("%/", ".")
"  replace_termcodes("y:silent grep! <C-r>\"<Cr>:copen<Cr>/" .. buf_name .. "<Cr>", false)
"  local yank_contents = vim.fn.getreg("\"")
"  replace_termcodes("/" .. yank_contents .. "<Cr>", false)
"end, {
"  desc = "Search in files with ripgrep in visual"
"})

nnoremap <Leader>cx mZ<Cmd>silent cclose<Cr>`Z
"vim.keymap.set("n", "<Leader>cx", function()
"  if vim.bo.buftype == "quickfix" then
"    replace_termcodes("<Cmd>silent cclose<Cr>")
"  else
"    replace_termcodes("mZ<Cmd>silent cclose<Cr>`Z")
"  end
"end,
"vim.keymap.set("n", "<Leader>l", function()
"local buf_name = vim.fn.expand("%"):gsub("%\\", "."):gsub("%/", ".")
"  replace_termcodes("<Cmd>lopen<Cr>/" .. buf_name .. "<Cr>", false)
"end, {
"  desc = "Open the [l]ocation list (:lopen/bufname)"
"})
"vim.keymap.set("n", "<Leader>c", function()
"  local buf_name = vim.fn.expand("%"):gsub("%\\", "."):gsub("%/", ".")
"  replace_termcodes("<Cmd>copen<Cr>/" .. buf_name .. "<Cr>")
"end, {
"  desc = "Open the quickfix list (:copen/bufname)"
"})

nnoremap <Leader>c <Cmd>copen<Cr>
nnoremap <Leader>j <Cmd>cnext<Cr>
nnoremap <Leader>k <Cmd>cprevious<Cr>
nnoremap <Leader>p <Cmd>lprevious<Cr>
nnoremap <Leader>n <Cmd>lnext<Cr>
nnoremap <Leader>ql mZ:silent lclose<Cr>`z
