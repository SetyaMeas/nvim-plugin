vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set smartindent")
vim.cmd("set shiftwidth=2")
vim.cmd("set mouse=a")
vim.cmd("set tabstop=2")

-- moving line
vim.cmd("nnoremap <A-j> :m-2<CR>==")
vim.cmd("nnoremap <A-k> :m+<CR>==")
