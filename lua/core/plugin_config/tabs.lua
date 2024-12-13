require("bufferline").setup({
    options = {
        mode = 'buffers',
        offsets = {
            filetpye = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            separator = true,
        }
    }
})

vim.keymap.set('n', '<leader>bl', ':BufferLinePick<CR>')
