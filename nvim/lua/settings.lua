local global = vim.g
local o = vim.opt

-- Editor options
o.undofile = true
o.swapfile = false
o.number = true 
o.relativenumber = true 
o.clipboard = "unnamedplus" 
o.syntax = "on" 
o.encoding = "UTF-8" 
o.ruler = true 
o.mouse = "a" 
o.title = true 
o.hidden = true 
o.ttimeoutlen = 0 
o.wildmenu = true 
o.showcmd = true 
o.showmatch = true 
o.inccommand = "split" 
o.splitright = true
o.splitbelow = true 
o.termguicolors = true
o.paste = false

-- Indentation Sync (Matches clang-format IndentWidth: 4)
o.shiftwidth = 4     -- Number of spaces for each step of (auto)indent
o.tabstop = 4        -- Number of spaces that a <Tab> counts for
o.softtabstop = 4    -- Number of spaces a <Tab> counts for while editing
o.expandtab = true   -- Use spaces instead of tabs

-- Indentation Logic (Disabled to let conform.nvim handle the heavy lifting)
o.autoindent = true  -- Keep this on for basic newline alignment
o.smartindent = false
o.cindent = false
o.indentexpr = ""    -- Prevents other scripts from overriding your 4-space logic

o.hlsearch = true
o.incsearch = true
o.autowriteall = true
