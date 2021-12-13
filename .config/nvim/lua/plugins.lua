

--Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {'https://github.com/folke/tokyonight.nvim'}
    use {'dracula/vim', as = 'dracula'}
   
    use {'kyazdani42/nvim-tree.lua' }
    use {'kyazdani42/nvim-web-devicons'}   
    use {'akinsho/bufferline.nvim',require("bufferline").setup{}}
    use {'nvim-lualine/lualine.nvim' }

    use {'https://github.com/mhartington/formatter.nvim'}
    use {
      'https://github.com/nvim-treesitter/nvim-treesitter',
      branch = '0.5-compat',
      run = ':TSUpdate',
    }
    use {'windwp/nvim-ts-autotag'}
    use {'p00f/nvim-ts-rainbow'  }
    use {'windwp/nvim-autopairs'  }
    use {
          'https://github.com/nvim-treesitter/playground',
          cmd = 'TSPlaygroundToggle',
          after = 'nvim-treesitter',
        }
     use {
          'https://github.com/nvim-treesitter/nvim-treesitter-textobjects',
          after = 'nvim-treesitter',
          branch = '0.5-compat',
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
  use {'https://github.com/neovim/nvim-lspconfig'}
  use {'https://github.com/hrsh7th/cmp-nvim-lsp'}
  use {'https://github.com/hrsh7th/cmp-buffer'}
  use {'https://github.com/hrsh7th/nvim-cmp' }
  use {'https://github.com/hrsh7th/cmp-vsnip'}
  use {'https://github.com/hrsh7th/vim-vsnip'}
  use {'https://github.com/hrsh7th/cmp-path'}
  use {'https://github.com/onsails/lspkind-nvim'}
  use {'https://github.com/glepnir/lspsaga.nvim'}
  use {'https://github.com/ray-x/lsp_signature.nvim',
          config = function()
            require('lsp_signature').setup {
              hint_prefix = '⏵', -- default is a panda emoji...
              zindex = 50,
            }
          end,
        }
  use {
     'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
      }
   use{
     'https://github.com/nvim-telescope/telescope-fzy-native.nvim'
   }

  use {'https://github.com/tpope/vim-commentary'}    
use {'https://github.com/folke/todo-comments.nvim',
 requires = "nvim-lua/plenary.nvim",

}
        use {'https://github.com/nelstrom/vim-visual-star-search'}
use {
      'https://github.com/vuki656/package-info.nvim',
      requires = { 'https://github.com/MunifTanjim/nui.nvim' },
      ft = { 'json' },
      config = function()
        require('package-info').setup { force = true }
      end,
    }
    --GIT{{{
     use {'https://github.com/tpope/vim-fugitive'}
     use {'https://github.com/tpope/vim-rhubarb'}
     use {'https://github.com/rhysd/git-messenger.vim'}
     use {
      'https://github.com/sindrets/diffview.nvim',
      cmd = { 'DiffviewOpen' },
      config = function()
        require('diffview').setup {
          use_icons = false,
        }
      end,
        }

    use {
      'https://github.com/rhysd/conflict-marker.vim',
      cmd = {
        'ConflictMarkerBoth',
        'ConflictMarkerNone',
        'ConflictMarkerOurselves',
        'ConflictMarkerThemselves',
      },
      config = function()
        -- disable the default highlight group
        vim.g.conflict_marker_highlight_group = ''

        -- Include text after begin and end markers
        vim.g.conflict_marker_begin = '^<<<<<<< .*$'
        vim.g.conflict_marker_end = '^>>>>>>> .*$'
      end,
    }

end)




