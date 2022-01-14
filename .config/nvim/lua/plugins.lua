

--Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {'folke/tokyonight.nvim'}
    use {'kyazdani42/nvim-tree.lua' }
    use {'nvim-lualine/lualine.nvim' }
    use {'kyazdani42/nvim-web-devicons'}   
    use {'akinsho/bufferline.nvim',require("bufferline").setup{}}
    use {'mhartington/formatter.nvim'}
    use {'tpope/vim-commentary'}    
    use {'folke/todo-comments.nvim',
         requires = "nvim-lua/plenary.nvim"}


    -- Treesitter 
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
      -- cmp plugins
  use {'hrsh7th/nvim-cmp' }
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-path'}
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-vsnip'}
  use {'hrsh7th/vim-vsnip'}
  -- LSP      
  use {'neovim/nvim-lspconfig'}
  use {'onsails/lspkind-nvim'}
  use {'ray-x/lsp_signature.nvim',
          config = function()
            require('lsp_signature').setup {
              hint_prefix = '⏵', -- default is a panda emoji...
              zindex = 50,
            }
          end,
        }
   -- Telescop      
  use {'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }}
  use{
     'nvim-telescope/telescope-fzy-native.nvim'}
  use {'nelstrom/vim-visual-star-search'}
  use {'vuki656/package-info.nvim',
      requires = { 'https://github.com/MunifTanjim/nui.nvim' },
      ft = { 'json' },
      config = function()
        require('package-info').setup { force = true }
      end }
   --GIT{{{
  use {'tpope/vim-fugitive'}
  use {'tpope/vim-rhubarb'}
  use {'rhysd/git-messenger.vim'}
  use {'sindrets/diffview.nvim',
      cmd = { 'DiffviewOpen' },
      config = function()
        require('diffview').setup {
          use_icons = false,
        }
      end }
  use {'rhysd/conflict-marker.vim',
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
      end }

end)




