return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local theme = require("lualine.themes.auto")
        -- theme.inactive = {
        --     a = { fg = "NONE", bg = "NONE" },
        --     b = { fg = "NONE", bg = "NONE" },
        --     c = { fg = "NONE", bg = "NONE" },
        -- }

        require("lualine").setup({
            options = {
                theme = theme,
                globalstatus = false,
                component_separators = "",
                section_separators = "",
            },
            sections = {
                lualine_a = { "mode" },
                lualine_b = { "branch", "diff" },
                lualine_c = { "filename" },
                lualine_x = { "filetype" },
                lualine_y = { "progress" },
                lualine_z = { "location" },
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { "filename" },
                lualine_x = {},
                lualine_y = {},
                lualine_z = {},
            },
        })

        -- vim.opt.fillchars:append({ stl = " ", stlnc = " " })
        -- vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "NONE" })
        -- vim.api.nvim_create_autocmd("ColorScheme", {
        --     callback = function()
        --         vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "NONE" })
        --     end,
        -- })
    end,
}
