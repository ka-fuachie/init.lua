-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'navarasu/onedark.nvim'

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use 'nvim-treesitter/nvim-treesitter-context'

  use('mbbill/undotree')

  use('tpope/vim-fugitive')

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {                                      -- Optional
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required

      -- Signature Help
      {'hrsh7th/cmp-nvim-lsp-signature-help'},
    }
  }

  use 'folke/neodev.nvim'

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use("zbirenbaum/copilot.lua")

  use('ThePrimeagen/vim-be-good')

  use 'numToStr/Comment.nvim'

  use 'lewis6991/gitsigns.nvim'

  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  use {
    "windwp/nvim-ts-autotag",
    config = function() require("nvim-ts-autotag").setup() end
  }

  -- use 'lukas-reineke/indent-blankline.nvim'

  use 'nvim-tree/nvim-web-devicons'
end)
