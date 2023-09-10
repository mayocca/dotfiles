local o = vim.opt
local g = vim.g

-- options
o.laststatus = 3 -- global statusline
o.showmode = false

o.clipboard = "unnamedplus"
o.cursorline = true

---- indenting
o.expandtab = true
o.shiftwidth = 2
o.smartindent = true
o.tabstop = 2
o.softtabstop = 2

o.fillchars = { eob = " " }
o.ignorecase = true
o.smartcase = true
o.mouse = "a"

-- numbers
o.number = true
o.relativenumber = true
o.numberwidth = 4
o.ruler = false

-- disable nvim intro
o.shortmess:append "sI"

o.signcolumn = "yes"
o.splitbelow = true
o.splitright = true
o.termguicolors = true
o.timeoutlen = 40
o.undofile = true

-- interval for writing swap file to disk
o.updatetime = 250

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
o.whichwrap:append "<>[]hl"

g.mapleader = " "

