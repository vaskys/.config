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

-- fuck select paste clipboard
map("x", "p", '"_dP')

map("n", "J", "<Nop>")
map("n", "K", "<Nop>")

map("n", "dd", [["_dd]])
map("n", "D", [["_D]])
map({ "n", "v", "x", "o" }, "d", [["_d]])
map({ "n", "v", "x", "o" }, "c", [["_c]])
map({ "n", "v", "x", "o" }, "<Del>", [["_d]])

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
map("n", "<leader>f", "<CMD>lua require('telescope.builtin').find_files({ no_ignore = true, hidden = true })<CR>")
map("n", "<leader>p", ":Telescope commands<CR>")
map("n", "<S-Tab>", ":Telescope oldfiles<CR>")
map("n", "<leader>k", ":Telescope keymaps<CR>")

-- QuickFix
map("n", "<leader>o", toggle_qf)
map("n", "<leader>j", "<CMD>cnext <CR>")
map("n", "<leader>k", "<CMD>cprev <CR>")

-- LSP
map("n", "gd", "<CMD>lua vim.lsp.buf.definition()<CR>")
map("n", "gD", "<CMD>lua vim.lsp.buf.declaration()<CR>")
map("n", "gt", "<CMD>lua vim.lsp.buf.type_definition()<CR>")
map("n", "H", "<CMD>lua vim.lsp.buf.hover()<CR>")
map("n", "R", "<CMD>lua vim.lsp.buf.rename()<CR>")
map("n", "L", "<CMD>lua vim.diagnostic.open_float()<CR>")
map("n", "<leader>t", "<CMD>LspClangdSwitchSourceHeader<CR>")
map("n", "<leader>r", "<CMD>CMakeRun<CR>")

-- Previous buffer
map("n", "<Tab>", "<CMD>b#<CR>")
map("n", "o", "<C-i>")
map("n", "O", "<C-o>")

-- Nvim DAP
map("n", "<Leader>dl", "<cmd>lua require'dap'.step_into()<CR>")
map("n", "<Leader>dj", "<cmd>lua require'dap'.step_over()<CR>")
map("n", "<Leader>dk", "<cmd>lua require'dap'.step_out()<CR>")
map("n", "<Leader>dc", "<cmd>lua require'dap'.continue()<CR>")
map("n", "<Leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>")
map("n", "<Leader>dd", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
map("n", "<Leader>de", "<cmd>lua require'dap'.terminate()<CR>")
map("n", "<Leader>dr", "<cmd>lua require'dap'.run_last()<CR>")

--fuck lower/uppers case
map("v", "u", "<Nop>")
map("v", "U", "<Nop>")

--fuck highlight
map("n", "#", "<Nop>")

--fuck cmd history
map("n", "q:", "<Nop>")

map("n", "<S-Down>", "<Nop>")
map("n", "<S-Up>", "<Nop>")
map("n", "<S-Left>", "<Nop>")
map("n", "<S-Right>", "<Nop>")

map("i", "<S-Down>", "<Nop>")
map("i", "<S-Up>", "<Nop>")
map("i", "<S-Left>", "<Nop>")
map("i", "<S-Right>", "<Nop>")

map("v", "<S-Down>", "<Nop>")
map("v", "<S-Up>", "<Nop>")
map("v", "<S-Left>", "<Nop>")
map("v", "<S-Right>", "<Nop>")

map("x", "<S-Down>", "<Nop>")
map("x", "<S-Up>", "<Nop>")
map("x", "<S-Left>", "<Nop>")
map("x", "<S-Right>", "<Nop>")
