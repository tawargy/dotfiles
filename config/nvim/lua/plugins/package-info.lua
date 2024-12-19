return {
	"vuki656/package-info.nvim",
	event = { "BufReadPre", "BufNewFile" },
	ft = { "json" },
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("package-info").setup({ force = true })
	end,
}
