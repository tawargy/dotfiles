

--Only required if you have packer configured as `opt`
 vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {'dracula/vim', as = 'dracula'}
    use {
      'https://github.com/mhartington/formatter.nvim',
      config = require 'config.formatter',
    }
    use {
      'https://github.com/nvim-treesitter/nvim-treesitter',
      branch = '0.5-compat',
      run = ':TSUpdate',
    }
    use {'https://github.com/windwp/nvim-ts-autotag'}
    use{'https://github.com/p00f/nvim-ts-rainbow'  }
    use { 'https://github.com/windwp/nvim-autopairs',
       config=require 'config.autopairs'
        }

  
    use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons',
     config =require 'config.nvim-tree'
  }
  use {'akinsho/bufferline.nvim',require("bufferline").setup{}}
  use {
    'hoob3rt/lualine.nvim',
    
    config =require 'config.lualine',
    options = {theme = 'dracula'}
  }
  use {
    'https://github.com/norcalli/nvim-colorizer.lua',
    config = function()
      -- https://github.com/norcalli/nvim-colorizer.lua/issues/4#issuecomment-543682160
      require('colorizer').setup({
        '*',
        '!vim',
        '!packer',
      }, {
        css = true,
      })
    end,
  }
  use {
    'https://github.com/neovim/nvim-lspconfig'
  }
  use {'https://github.com/hrsh7th/cmp-nvim-lsp'}
  use {'https://github.com/hrsh7th/cmp-buffer'}
  use {'https://github.com/hrsh7th/nvim-cmp',
        config =require 'config.cmp-config'
      }
  use {'https://github.com/tpope/vim-commentary'}    
  --use {'https://github.com/hrsh7th/cmp-vsnip'}
  --use {'https://github.com/hrsh7th/vim-vsnip'}

  use {
     'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
      }
   use{
     'https://github.com/nvim-telescope/telescope.nvim'
   }
   use{
     'https://github.com/nvim-telescope/telescope-fzy-native.nvim'
   }
end)




