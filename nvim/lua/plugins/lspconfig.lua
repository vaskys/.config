return {
	"hrsh7th/cmp-nvim-lsp",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		{ "antosha417/nvim-lsp-file-operations", config = true },
		{ "folke/lazydev.nvim", opts = {} },
	},
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		vim.lsp.config("clangd", {
			capabilities = capabilities,
			cmd = {
				"clangd",
				"--background-index=true",
				"--clang-tidy=false",
				"--pch-storage=disk",
				"--header-insertion=never",
				"--all-scopes-completion=false",
				"--function-arg-placeholders=false",
				"--limit-results=100",
				"-j=2",
			},
		})

		vim.lsp.enable("clangd")
	end,
}
