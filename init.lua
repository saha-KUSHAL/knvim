-- Make sure to require Packer
local packer = require('packer')

-- Initialize Packer
packer.init({
  -- Packer configuration options
})
require('plugins')

--colour scheme
vim.cmd("colorscheme onedark")

--syntax highlighting
require('treesitter-config')

--vim options
require('options')

--statusline
require('lualine-config')

--bufferline
require('bufferline-config')

--transparency
require('transparent-config')

--file explorer
require('nvim-tree-config')

--keybindings
require('keybindings')

--which-key config
require('which-key-config')

--fuzzy search
require('telescope-config')

--terminal
require('toggleterm-config')

--indent lines
require('blankline-config')

