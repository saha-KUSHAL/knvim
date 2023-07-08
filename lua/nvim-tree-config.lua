-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require("nvim-tree").setup({ 
    sort_by = "case_sensitive",
  view = {
    width = 25,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
vim.g.nvim_tree_indent_markers=1
vim.cmd('hi Normal ctermbg=NONE')
vim.cmd('hi NonText ctermbg=NONE')
vim.cmd('hi Normal guibg=NONE')
vim.cmd('hi NonText guibg=NONE')
