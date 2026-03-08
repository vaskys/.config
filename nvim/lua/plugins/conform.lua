return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    formatters_by_ft = {
      cpp = { "clang_format" },
      c = { "clang_format" },
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_format = "fallback",
    },
    formatters = {
      clang_format = {
        prepend_args = {
          "--style={" ..
            "BasedOnStyle: llvm, " ..
            "BreakBeforeBraces: Allman, " ..
            "IndentWidth: 4, " ..
            "ColumnLimit: 120, " ..
            "AlignAfterOpenBracket: DontAlign, " ..
            "AlwaysBreakAfterReturnType: None, " ..
            "AccessModifierOffset: -4, " ..
            "SortIncludes: false, " ..
            "PointerAlignment: Left" .. 
            "}",
        },
      },
    },
  },
}
