vim.g.mapleader = " "

local function map(mode, lhs, rhs)
  vim.keymap.set(mode, lhs, rhs, { silent = true, noremap = true })
end

local function map_nowait(mode, lhs, rhs)
  vim.keymap.set(mode, lhs, rhs, { silent = true, noremap = true, nowait = true })
end


map_nowait("n", "-", "$")

map("n", "J", "<Nop>")
map("n", "K", "<Nop>")


map("n", "dd", [["_dd]])
map("n", "D",  [["_D]])
map({ "n", "v", "x", "o" }, "d",    [["_d]])
map({ "n", "v", "x", "o" }, "c",    [["_c]])
map({ "n", "v", "x", "o" }, "<Del>",[["_d]])

-- Window Navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")


map("n", "<C-e>", "<CMD>vs<CR>")
map("n", "<C-w>", "<CMD>close<CR>")
map("n", "E", "<CMD>vs<CR>")
map("n", "W", "<CMD>close<CR>")

-- Telescope
map("n", "<C-p>", "<CMD>Telescope live_grep<CR>")
map("n", "P", ":Telescope find_files<CR>")
map_nowait("n", "ff", ":Spectre<CR>")

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
map(
  "n",
  "<Leader>dd",
  "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
map("n", "<Leader>de", "<cmd>lua require'dap'.terminate()<CR>")
map("n", "<Leader>dr", "<cmd>lua require'dap'.run_last()<CR>")

--fuck lower/uppers case
map("v", "u", "<Nop>")
map("v", "U", "<Nop>")

--fuck cmd history
map("n", "q:", "<Nop>")
