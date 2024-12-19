return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			-- Add your custom setup here
		})

		-- Key mappings
		vim.api.nvim_set_keymap("n", "<leader>tt", "<cmd>ToggleTerm<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap(
			"n",
			"<leader>th",
			"<cmd>ToggleTerm direction=horizontal<CR>",
			{ noremap = true, silent = true }
		)
		vim.api.nvim_set_keymap(
			"n",
			"<leader>tv",
			"<cmd>ToggleTerm direction=vertical<CR>",
			{ noremap = true, silent = true }
		)
		vim.api.nvim_set_keymap(
			"n",
			"<leader>tf",
			"<cmd>ToggleTerm direction=float<CR>",
			{ noremap = true, silent = true }
		)
	end,
}
