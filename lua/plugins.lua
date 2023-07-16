--installing packer automatically if not installed
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({
    'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path
  })
  vim.api.nvim_command('packadd packer.nvim')
end

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
use('akinsho/toggleterm.nvim')
use 'lukas-reineke/indent-blankline.nvim'
use { "kkharji/sqlite.lua" }
use {
  "nvim-telescope/telescope-frecency.nvim",
  config = function()
    require"telescope".load_extension("frecency")
  end,
  requires = {"kkharji/sqlite.lua"}
}
use 'wakatime/vim-wakatime'
use {
    "saha-KUSHAL/minintro.nvim",
    config = function() require("minintro").setup({ color = "#98c379" }) end
}
end)
