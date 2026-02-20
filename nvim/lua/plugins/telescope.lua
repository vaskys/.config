return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = { 
    "nvim-lua/plenary.nvim" 
  },
    config = function()
        require("telescope").setup({
      no_ignore = true,
      hidden = true
    })
    end,
}
