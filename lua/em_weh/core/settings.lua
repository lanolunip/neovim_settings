local o = vim.opt
local g = vim.g

o.encoding = "utf-8"
o.number = true
o.relativenumber = true
o.autoindent = true
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.wrap = false
o.cursorline = true
o.mouse:append('a')
o.clipboard:append("unnamedplus")
o.ignorecase = true
o.termguicolors = true

g.mapleader = " "

-- Airline
g['airline#extensions#tabline#left_sep'] = ' '
g['airline#extensions#tabline#left_alt_sep'] = '|'
g['airline#extensions#tabline#enabled'] = true
g['airline#extensions#branch#enabled'] = true
g['airline#extensions#tmuxline#enabled'] = false
