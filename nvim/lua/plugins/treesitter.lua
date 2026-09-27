return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",

	dependencies = {
		{
			"windwp/nvim-ts-autotag",
			opts = {},
		},
	},

	config = function()
		require("nvim-treesitter.parsers").hlsl = {
			install_info = {
				url = "https://github.com/tree-sitter-grammars/tree-sitter-hlsl",
				revision = "main",
			},
		}

		require("nvim-treesitter").setup({
			ensure_installed = {
				"json",
				"javascript",
				"typescript",
				"tsx",
				"yaml",
				"html",
				"css",
				"markdown",
				"markdown_inline",
				"bash",
				"lua",
				"vim",
				"dockerfile",
				"gitignore",
				"c",
				"rust",
				"hlsl",
			},
			auto_install = true,
		})
	end,
}
