-- Settings
local opt = vim.opt
local o = vim.o

-- Indent Settings
opt.tabstop = 2
opt.softtabstop = 0
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.wrap = true

-- Line Numbers
opt.number = true
opt.relativenumber = true

-- Clipboard
opt.clipboard = "unnamedplus"

-- Better editor UI
o.cursorline = true

-- Keep cursor centered vertically on the screen
o.scrolloff = 999
