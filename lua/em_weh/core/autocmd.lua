-- Highlight yang di Yank
vim.cmd('au TextYankPost * silent! lua vim.highlight.on_yank { higroup = \'IncSearch\', timeout=150 }')