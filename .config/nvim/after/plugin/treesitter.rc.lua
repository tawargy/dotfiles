local configs = require("nvim-treesitter.configs")

configs.setup {
	sync_install = false,
  ensure_installed = {
				'bash',
				'comment',
				'css',
				'dockerfile',
				'embedded_template', -- ERB, EJS, etc…
				'go',
				'vimdoc',
				'html',
				'javascript',
				'jsdoc',
				'json',
				'json5',
				'jsonc',
				'lua',
				'make',
				'markdown',
				'markdown_inline',
				'nix',
				'python',
				'query', -- For treesitter quereies
				'regex',
				'tsx',
				'typescript',
				'vim',
				'yaml',
			},

  ignore_install = { "" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,

  },
    indent = {
    enable = true
  },
   autopairs = {
      enable = true,
    },
  	autotag = {
				enable = true,
				filetypes = {
					'html',
					'javascript',
					'javascriptreact',
					'typescriptreact',
					'svelte',
					'vue',
					'javascript.jsx',
					'typescript.tsx',
				},
			},
  
}
