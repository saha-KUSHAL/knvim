
local wk = require("which-key")
local mappings = {
  q = {":q<cr>", "Quit"},
  Q = {":wq<cr>", "Save & Quit"},
  w = {":w<cr>", "Save"},
  x = {":bdelete<cr>", "Close"},
  E = {":e ~/.config/nvim/init.lua", "Edit config"},
  f = {":Telescope find_files<cr>", "Telescope Find Files"},
  r = {":Telescope live_grep<cr>", "Telescope Live Grep"},
  F = {":Telescope frecency<cr>", "Telescope Recent Files"}
}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)
vim.cmd([[autocmd VimEnter * hi WhichKeyFloat guibg=0]])

