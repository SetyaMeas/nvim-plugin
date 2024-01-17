vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set smartindent")
vim.cmd("set mouse=a")
vim.cmd("set shiftwidth=4")
vim.cmd("set tabstop=4")
vim.cmd("set scrolloff=5")

-- big cursor in insert mode
vim.cmd("set guicursor=n-v-c-i:block")

-- add/delete cursor in insert mode
vim.api.nvim_exec(
	[[
  autocmd InsertEnter * set nocursorline
  autocmd InsertLeave * set cursorline
]],
	false
)

-- moving line in normal mode
vim.cmd("nnoremap <A-k> :m-2<CR>==")
vim.cmd("nnoremap <A-j> :m+<CR>==")
-- moving line in visaul mode
vim.api.nvim_set_keymap("x", "<A-k>", ":move '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<A-j>", ":move '>+1<CR>gv=gv", { noremap = true, silent = true })

-- in normal mode
vim.cmd("nnoremap ts 0")
vim.cmd("nnoremap te $")
-- in visual mode
vim.api.nvim_set_keymap("x", "te", "$", { noremap = true })
vim.api.nvim_set_keymap("x", "ts", "0", { noremap = true })

-- Scroll down in insert mode with <C-j>
-- Scroll up in insert mode with <C-k>
vim.api.nvim_set_keymap("i", "<C-j>", "<C-o><C-e>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-k>", "<C-o><C-y>", { noremap = true, silent = true })

-- press C-o in insert mode to create new line
vim.api.nvim_set_keymap("i", "<C-o>", "<C-o>o", { noremap = true, silent = true })









