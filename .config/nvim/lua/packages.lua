vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'
  use 'tpope/vim-surround' -- ysiw" to surround word with "

  use 'tpope/vim-commentary' -- gcc -> comment out line, gcap -> paragraph, gc -> selected
  use 'mg979/vim-visual-multi' -- multiple cursors
  use 'jiangmiao/auto-pairs' -- insert () in pairs
  use 'liuchengxu/vim-which-key' -- shows keybindings
  use 'sheerun/vim-polyglot'
  use 'nvim-treesitter/nvim-treesitter'
  use {                   
    'nvim-tree/nvim-tree.lua',  -- file explorer
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    }
  }
  use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'} -- tabs
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

end)
