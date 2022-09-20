return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'
  use {
    'goolord/alpha-nvim',
  }
  use 'nvim-lualine/lualine.nvim'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {'kyazdani42/nvim-web-devicons'}
  }
  use 'connorholyday/vim-snazzy'
  use 'tpope/vim-fugitive'
  use 'lewis6991/gitsigns.nvim'
  use '/Users/sergei.sokolov/.fzf'
  use 'junegunn/fzf.vim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = {'nvim-lua/plenary.nvim', 'kyazdani42/nvim-web-devicons'}
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'ntpeters/vim-better-whitespace'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'mbbill/undotree'
  use {'akinsho/git-conflict.nvim', tag = '*'}
  use {'hkupty/iron.nvim', tag = '*'}
  use {
    'ms-jpq/coq_nvim',
    branch = 'coq',
  }
  use 'neovim/nvim-lspconfig'
  use {
    'williamboman/mason.nvim',
    config = function() require('mason').setup() end,
  }
  use {
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig"
  }
  use 'folke/tokyonight.nvim'
  use {
  'nanozuki/tabby.nvim',
  config = function() require("tabby").setup() end,
  }
  use {
  "folke/which-key.nvim",
  config = function()
    require("which-key").setup {}
  end
}
end)
