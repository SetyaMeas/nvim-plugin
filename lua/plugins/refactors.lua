return {
	"ThePrimeagen/refactoring.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("refactoring").setup()

		vim.keymap.set("x", "<Space>re", ":Refactor extract ")
		vim.keymap.set("x", "<Space>rf", ":Refactor extract_to_file ")

		vim.keymap.set("x", "<Space>rv", ":Refactor extract_var ")

		vim.keymap.set({ "n", "x" }, "<Space>ri", ":Refactor inline_var")
		vim.keymap.set("n", "<Space>rI", ":Refactor inline_func")

		vim.keymap.set("n", "<Space>rb", ":Refactor extract_block")
		vim.keymap.set("n", "<Space>rbf", ":Refactor extract_block_to_file")
	end,
}
