print('packer')
local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})


return packer.startup(function(use)
	-- My plugins here
	use("wbthomason/packer.nvim") -- Have packer manage itself
	use("nvim-lua/popup.nvim") -- An implementation of the Popup API from vim in Neovim
	use("nvim-lua/plenary.nvim") -- Useful lua functions used ny lots of plugins
  --  colorscheme
	--use({ "folke/tokyonight.nvim" })
  --use 'Mofiqul/dracula.nvim'
  use "EdenEast/nightfox.nvim"
  use 'bluz71/vim-nightfly-colors'
    -- layout
	use({ "kyazdani42/nvim-tree.lua" })
	use({ "nvim-lualine/lualine.nvim" })
  use "nvim-tree/nvim-web-devicons"
  use {'akinsho/bufferline.nvim', tag = "*"}
  -- utils 
	use({ "mhartington/formatter.nvim" })
	use({ "tpope/vim-commentary" })
  use({ "folke/todo-comments.nvim"})
	use({"lukas-reineke/indent-blankline.nvim"})
  use({"cdelledonne/vim-cmake"})

	-- Treesitter

  use {
    'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
	use({ "windwp/nvim-ts-autotag" })
	use({ "windwp/nvim-autopairs" })

	use({
		"https://github.com/norcalli/nvim-colorizer.lua",
		config = function()
			-- https://github.com/norcalli/nvim-colorizer.lua/issues/4#issuecomment-543682160
			require("colorizer").setup({
				"*",
				"!vim",
				"!packer",
			}, { css = true })
		end,
	})
	-- LSP
	use({ "neovim/nvim-lspconfig" })
	use({ "onsails/lspkind-nvim" })
	use({ "ray-x/lsp_signature.nvim" })


	-- cmp plugins
  use({ "hrsh7th/nvim-cmp" })
	use({ "hrsh7th/cmp-path" })
	use({ "hrsh7th/cmp-buffer" })
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-nvim-lua" })
	use({ "hrsh7th/cmp-nvim-lsp-signature-help" })
	use({ "hrsh7th/cmp-vsnip" })
	use({ "saadparwaiz1/cmp_luasnip" })
	use({ "hrsh7th/vim-vsnip" })
  use({ "L3MON4D3/LuaSnip" })

	use({ "rafamadriz/friendly-snippets" })

  -- code generator
  use({ "github/copilot.vim" })
  use 'Exafunction/codeium.vim'
 -- use { 'codota/tabnine-nvim', run = "./dl_binaries.sh" }


	-- Telescop
	use({ "nvim-telescope/telescope.nvim"})
	use({ "nvim-telescope/telescope-fzy-native.nvim" })
	use({ "nelstrom/vim-visual-star-search" })

  -- Package info (All the npm/yarn/pnpm)
	use({
		"vuki656/package-info.nvim",
		requires = { "https://github.com/MunifTanjim/nui.nvim" },
		ft = { "json" },
		config = function()
			require("package-info").setup({ force = true })
		end,
	})
  -- terminal
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
  end}

	-- GIT

  use {
			'https://github.com/tpope/vim-fugitive',
			requires = {
				{ 'https://github.com/tpope/vim-rhubarb' },
			},
		}
	use({
		"sindrets/diffview.nvim",
		cmd = { "DiffviewOpen" },
		config = function()
			require("diffview").setup({
				use_icons = false,
			})
		end,
	})
  use {'lewis6991/gitsigns.nvim'}
 	use({ "rhysd/git-messenger.vim" })
	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
  --

	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)

