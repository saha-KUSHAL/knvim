require("bufferline").setup({
    options = {
        always_show_bufferline = false
    }
})
vim.cmd [[
nnoremap <silent><TAB> :BufferLineCycleNext<CR>
nnoremap <silent><S-TAB> :BufferLineCyclePrev<CR>
]]
