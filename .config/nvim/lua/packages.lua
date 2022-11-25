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
  use {                   
    'nvim-tree/nvim-tree.lua',  -- file explorer
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    }
  }
end)
