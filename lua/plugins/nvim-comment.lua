return {
	"terrortylor/nvim-comment",
	config = function()
		require("nvim_comment").setup({
			comment_empty = false,
		})
		vim.cmd("nnoremap cl :CommentToggle<CR>")
		-- use 'gc' for comment operator
	end,
}
