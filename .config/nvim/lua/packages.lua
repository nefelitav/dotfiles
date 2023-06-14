vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'
  use 'jiangmiao/auto-pairs' -- insert () in pairs
  use 'hrsh7th/nvim-cmp' -- autocomplete
  use 'liuchengxu/vim-which-key' -- shows keybindings
  use 'nvim-treesitter/nvim-treesitter'
  use {                   
    'nvim-tree/nvim-tree.lua',  -- file explorer
    requires = {
      'nvim-tree/nvim-web-devicons',
    }
  }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

end)

-- select text -> :v 
  -- delete -> x
  -- copy, paste -> y, p
  -- comment -> :s/^/#
  -- uncomment -> :s/^/#
  
-- multi cursor
-- autocomplete
-- search
-- file explorer
-- tabs
  -- :tabnew filename
  -- :tabclose filename
  -- :tabprevious
  -- :tabnext
  -- nnoremap <C-Left> :tabprevious<CR>                                                                            
  -- nnoremap <C-Right> :tabnext<CR>