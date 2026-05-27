return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        local actions = require("telescope.actions")
        require("telescope").setup({
            defaults = {
                mappings = {
                    i = {
                        ["<leader>q"] = actions.send_to_qflist + actions.open_qflist,
                        ["<leader>Q"] = actions.send_selected_to_qflist + actions.open_qflist,
                    },
                    n = {
                        ["<leader>q"] = actions.send_to_qflist + actions.open_qflist,
                        ["<leader>Q"] = actions.send_selected_to_qflist + actions.open_qflist,
                    },
                },
            },
        })
    end,
}
