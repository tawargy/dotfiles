return {

	"stevearc/dressing.nvim",
	config = function()
		require("auto-session").setup({
			input = {
				-- Set this to true to always use the current working directory
				cwd = vim.fn.getcwd(),
			},
		})
	end,
}
