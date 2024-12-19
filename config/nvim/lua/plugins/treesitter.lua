return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	config = function()
		local treesitter = require("nvim-treesitter.configs")
		treesitter.setup({
			ensure_installed = {
				"json",
				"javascript",
				"typescript",
				"tsx",
				"yaml",
				"html",
				"css",
				"prisma",
				"markdown",
				"markdown_inline",
				"svelte",
				"graphql",
				"bash",
				"lua",
				"vim",
				"dockerfile",
				"gitignore",
				"query",
				"vimdoc",
				"c",
				"php",
				"rust",
				"toml",
				"python",
				"go",
			},
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			},
			autopairs = {
				enable = true,
			},
			autotag = {
				enable = true,
				filetypes = {
					"html",
					"javascript",
					"javascriptreact",
					"typescriptreact",
					"svelte",
					"vue",
					"javascript.jsx",
					"typescript.tsx",
				},
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
		})
	end,
}
