return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use "olimorris/onedarkpro.nvim"
  use 'nvim-tree/nvim-web-devicons'
  use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use {'akinsho/bufferline.nvim', tag = "*",
        requires = 'nvim-tree/nvim-web-devicons'
  }
  use 'xiyaowong/transparent.nvim'
  use { 'nvim-tree/nvim-tree.lua',
        requires = 'nvim-tree/nvim-web-devicons'
  }
use "folke/which-key.nvim"
use {
  'nvim-telescope/telescope.nvim', tag = '0.1.2',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
use {
    'saha-KUSHAL/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
}
use('akinsho/toggleterm.nvim')
end)
