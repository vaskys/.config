return {
  "hrsh7th/cmp-nvim-lsp",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    { "antosha417/nvim-lsp-file-operations", config = true },
    { "folke/lazydev.nvim", opts = {} },
  },
  config = function()
    -- import cmp-nvim-lsp plugin
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    -- used to enable autocompletion (assign to every lsp server config)
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = cmp_nvim_lsp.default_capabilities(capabilities)

     -- Explicitly enable snippet support and placeholders
    capabilities.textDocument.completion.completionItem.snippetSupport = true
    capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
    capabilities.textDocument.completion.completionItem.resolveSupport = {
      properties = { "documentation", "detail", "additionalTextEdits" },
    }

    vim.lsp.config("*", {
      capabilities = capabilities,
    })

    vim.lsp.config.clangd = {
      cmd = {
        "clangd",
        "--background-index",
        "--clang-tidy",
        "--offset-encoding=utf-8",
        "--completion-style=detailed",
        "--function-arg-placeholders=true",
        "--header-insertion=never"
      },
      root_markers = { ".clangd", "compile_commands.json", ".git" },
      filetypes = { "c", "cpp", "objc", "objcpp" },
    }
    vim.lsp.enable({
        "clangd",
        "sourcekit",
        "pyright",
    })
  end,
}
