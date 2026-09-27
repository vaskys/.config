return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	opts = {
		formatters_by_ft = {
			cpp = { "clang_format" },
			c = { "clang_format" },
			python = { "black" },
			hlsl = { "clang_format" },
			hlsli = { "clang_format" },
		},
		format_on_save = {
			timeout_ms = 2500,
			lsp_format = "fallback",
		},
		formatters = {
			clang_format = {
				prepend_args = {
					"--style={"
						.. "BasedOnStyle: llvm, "
						.. "BreakBeforeBraces: Allman, "
						.. "IndentWidth: 4, "
						.. "ColumnLimit: 120, "
						.. "AlignAfterOpenBracket: DontAlign, "
						.. "AccessModifierOffset: -4, "
						.. "IndentCaseLabels: true, "
						.. "SortIncludes: false, "
						.. "PointerAlignment: Left, "
						.. "PenaltyReturnTypeOnItsOwnLine: 1000"
						.. "}",
				},
			},
		},
	},
}
