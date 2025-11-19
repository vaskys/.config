vim.g.mapleader = " "

local function map(mode, lhs, rhs)
  vim.keymap.set(mode, lhs, rhs, { silent = true, noremap = true })
end

local function map_nowait(mode, lhs, rhs)
  vim.keymap.set(mode, lhs, rhs, { silent = true, noremap = true, nowait = true })
end

local function toggle_qf()
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    if vim.fn.win_gettype(win) == "quickfix" then
      vim.cmd("cclose")
      return
    end
  end
  vim.cmd("copen")
end


map("n", "J", "<Nop>")
map("n", "K", "<Nop>")

map("n", "dd", [["_dd]])
map("n", "D",  [["_D]])
map({ "n", "v", "x", "o" }, "d",    [["_d]])
map({ "n", "v", "x", "o" }, "c",    [["_c]])
map({ "n", "v", "x", "o" }, "<Del>",[["_d]])

-- Window Navigation
map("n", "<leader>h", "<C-w>h")
map("n", "<leader>l", "<C-w>l")
map("n", "<leader>k", "<C-w>k")
map("n", "<leader>j", "<C-w>j")

map("n", "<leader>e", "<CMD>vs<CR>")
map("n", "<leader>w", "<CMD>close<CR>")

--save all n shit
map("n", "<leader>s", "<CMD>wall<CR>")

-- Telescope
map("n", "<leader>g", "<CMD>Telescope live_grep<CR>")
map("n", "<leader><leader>", ":Telescope find_files<CR>")
map("n", "<leader>p", ":Telescope commands<CR>")
map("n", "<leader><Tab>", ":Telescope oldfiles<CR>")
map("n", "<leader>k", ":Telescope keymaps<CR>")
map_nowait("n", "<leader>ff", ":Spectre<CR>")

-- QuickFix
map("n", "<leader>o", toggle_qf)
map("n", "<leader>j", "<CMD>cnext <CR>")
map("n", "<leader>k", "<CMD>cprev <CR>")
-- LSP
map("n", "gd", "<CMD>lua vim.lsp.buf.definition()<CR>")
map("n", "gD", "<CMD>lua vim.lsp.buf.declaration()<CR>")
map("n", "gt", "<CMD>lua vim.lsp.buf.type_definition()<CR>")
map("n", "H", "<CMD>lua vim.lsp.buf.hover()<CR>")
map("n","R","<CMD>lua vim.lsp.buf.rename()<CR>")
map("n","L","<CMD>lua vim.diagnostic.open_float()<CR>")

-- Previous buffer
map("n", "<Tab>", "<CMD>b#<CR>")

-- Nvim DAP
map("n", "<Leader>dl", "<cmd>lua require'dap'.step_into()<CR>")
map("n", "<Leader>dj", "<cmd>lua require'dap'.step_over()<CR>")
map("n", "<Leader>dk", "<cmd>lua require'dap'.step_out()<CR>")
map("n", "<Leader>dc", "<cmd>lua require'dap'.continue()<CR>")
map("n", "<Leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>")
map("n","<Leader>dd",  "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
map("n", "<Leader>de", "<cmd>lua require'dap'.terminate()<CR>")
map("n", "<Leader>dr", "<cmd>lua require'dap'.run_last()<CR>")

--fuck lower/uppers case
map("v", "u", "<Nop>")
map("v", "U", "<Nop>")

--fuck highlight
map("n", "#", "<Nop>")

--fuck cmd history
map("n", "q:", "<Nop>")
