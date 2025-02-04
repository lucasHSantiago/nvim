return {
    "NeogitOrg/neogit",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "sindrets/diffview.nvim",
        "nvim-telescope/telescope.nvim",
        "ibhagwan/fzf-lua",
        "echasnovski/mini.pick",
    },

    config = function()
        local neogit = require('neogit')
        neogit.setup {}

        vim.keymap.set("n", "<leader>gs", ":Neogit kind=tab<CR>")

        local colors = {
            add_bg = "#04260f",
            add_fg = "#3fb950",
            delete_bg = "#4f2020",
            delete_fg = "#f85149",
            change_bg = "#473d1f",
            change_fg = "#e3b341",
            text_bg = "#0d3a68",
            text_fg = "#58a6ff"
        }

        vim.api.nvim_set_hl(0, "DiffAdd", { bg = colors.add_bg, fg = colors.add_fg, bold = true })
        vim.api.nvim_set_hl(0, "DiffChange", { bg = colors.change_bg, fg = colors.change_fg, bold = true })
        vim.api.nvim_set_hl(0, "DiffDelete", { bg = colors.delete_bg, fg = colors.delete_fg, bold = true })
        vim.api.nvim_set_hl(0, "DiffText", { bg = colors.text_bg, fg = colors.text_fg, bold = true })

        vim.api.nvim_set_hl(0, "GitSignsAddLn", { bg = colors.add_bg, fg = colors.add_fg, bold = true })

        vim.api.nvim_set_hl(0, "NeogitDiffAddHighlight", { bg = colors.add_bg, fg = colors.add_fg, bold = true })
        vim.api.nvim_set_hl(0, "NeogitDiffDeleteHighlight", { bg = colors.delete_bg, fg = colors.delete_fg, bold = true })
        vim.api.nvim_set_hl(0, "NeogitDiffContextHighlight",
            { bg = colors.change_bg, fg = colors.change_fg, bold = true })
        vim.api.nvim_set_hl(0, "NeogitDiffTextHighlight", { bg = colors.text_bg, fg = colors.text_fg, bold = true })
    end
}
