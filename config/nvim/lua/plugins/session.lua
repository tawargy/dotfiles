return {
	"rmagatti/auto-session",
	config = function()
		require("auto-session").setup({
			suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
			session_lens = {
				buftypes_to_ignore = {},
				load_on_setup = true,
				previewer = false,
				theme_conf = { boder = true },
			},
			mappings = {
				-- Mode can be a string or a table, e.g. {"i", "n"} for both insert and normal mode
				delete_session = { "i", "<C-D>" },
				alternate_session = { "i", "<C-S>" },
				copy_session = { "i", "<C-Y>" },
			},
		})
	end,
}
