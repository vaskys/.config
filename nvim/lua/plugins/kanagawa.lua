return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      theme = "dragon",
      overrides = function(colors)
        return {
          -- 1. The Gutter (Numbers and Icons)
          LineNr = { bg = "none" },
          SignColumn = { bg = "none" },
          FoldColumn = { bg = "none" },

          -- 2. Diagnostics (The "Errors")
          -- This removes the background behind error/warn text and icons
          DiagnosticError = { bg = "none" },
          DiagnosticWarn  = { bg = "none" },
          DiagnosticInfo  = { bg = "none" },
          DiagnosticHint  = { bg = "none" },

          -- Diagnostic Signs (The icons in the gutter)
          DiagnosticSignError = { bg = "none" },
          DiagnosticSignWarn  = { bg = "none" },
          DiagnosticSignInfo  = { bg = "none" },
          DiagnosticSignHint  = { bg = "none" },

          -- 3. Floating Windows (The "Helpers" / LSP Hover)
          -- This makes LSP hover windows and documentation transparent
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          Pmenu       = { bg = "none" }, -- Autocomplete menu background
        }
      end,
    },
    config = function(_, opts)
      require("kanagawa").setup(opts)
      vim.cmd.colorscheme("kanagawa-dragon")
    end,
  }
}
