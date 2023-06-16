local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.numberwidth = 2
opt.ruler = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

opt.hlsearch = false
opt.incsearch = true
-- Allow syntax highlighting
opt.syntax = "ON"
opt.termguicolors = true

opt.wrap = true

opt.undofile = true

opt.swapfile = true
opt.backup = false

-- Maintain a buffer of rows between the current row and either ends of the window
opt.scrolloff = 8
opt.signcolumn = "yes"

opt.updatetime = 250

opt.cursorline = true
opt.cursorcolumn = false
opt.colorcolumn = "80"

--  Show invisible whtespace characters
opt.list = true

