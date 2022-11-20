local status,formatter=pcall(require,'formatter')
if (not status) then return end


local function prettier()
	return {
		exe = "prettier",
		args = {
			"--config-precedence",
			"prefer-file",
			"--single-quote",
			"--no-bracket-spacing",
			"--prose-wrap",
			"always",
			"--arrow-parens",
			"always",
			"--trailing-comma",
			"all",
			"--no-semi",
			"--end-of-line",
			"lf",
			"--print-width",
			vim.bo.textwidth,
			"--stdin-filepath",
			vim.fn.shellescape(vim.api.nvim_buf_get_name(0)),
		},
		stdin = true,
	}
end

local function shfmt()
	return {
		exe = "shfmt",
		args = { "-" },
		stdin = true,
	}
end

local filetype = {
	javascript = { prettier },
	typescript = { prettier },
	javascriptreact = { prettier },
	typescriptreact = { prettier },
	vue = { prettier },
	["javascript.jsx"] = { prettier },
	["typescript.tsx"] = { prettier },
	markdown = { prettier },
	css = { prettier },
	json = { prettier },
	jsonc = { prettier },
	scss = { prettier },
	less = { prettier },
	yaml = { prettier },
	graphql = { prettier },
	html = { prettier },
	sh = { shfmt },
	bash = { shfmt },
	python = {
		function()
			return {
				exe = "black",
				args = { "--quiet", "-" },
				stdin = true,
			}
		end,
	},
	rust = {
		function()
			return {
				exe = "rustfmt",
				args = { "--quiet", "-" },
				stdin = true,
			}
		end,
	},
	lua = {
		function()
			return {
				exe = "stylua",
				args = { "--quiet", "-" },
				stdin = true,
			}
		end,
	},
 
}

formatter.setup({
	logging = false,
	filetype = filetype,

})


