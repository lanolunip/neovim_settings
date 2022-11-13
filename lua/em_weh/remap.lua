local nnoremap = require('em_weh.keymap').nnoremap
local inoremap = require('em_weh.keymap').inoremap
local nmap = require('em_weh.keymap').nmap
local fn = vim.fn

-- Hide Highlight
nnoremap('<leader>/', '<cmd>noh<CR>', {silent = true})

-- NERDTree
nnoremap('<leader>n', '<cmd>NERDTreeFocus<CR>')
nnoremap('<C-n>', '<cmd>NERDTree<CR>')
nnoremap('<C-t>', '<cmd>NERDTreeToggle<CR>')
nnoremap('<leader>f', '<cmd>NERDTreeFind<CR>')

-- Tagbar
nmap('<F8>' ,'<cmd>TagbarToggle<CR>')

-- FuzzyFinder
nnoremap('<leader>p', '<cmd>Files<CR>')

-- COC
-- Go to Definition
nmap('gd', '<Plug>(coc-definition)', {silent = true})
-- Masukan ke coc-settings.json jika ingin merubah behaviour gd
-- coc.preferences.jumpCommand": "tab drop atau tabe" open in new tab
-- coc.preferences.jumpCommand": "split atau vsplit" open di split atau vsplit

-- Use tab for trigger completion with characters ahead and navigate.
-- NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
-- other plugin before putting this into your config.
-- NOTE: There's always complete item selected by default, you may want to enable
-- no select by `"suggest.noselect": true` in your configuration file.
inoremap(
    '<TAB>',
    'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()',
    {
        silent = true,
        expr = true
    }
)

inoremap(
    '<S-TAB>',
    'coc#pum#visible() ? coc#pum#prev(1) : "<C-h>"',
    { expr = true }
)

-- Make <CR> to accept selected completion item or notify coc.nvim to format
-- <C-g>u breaks current undo, please make your own choice.
inoremap(
    '<CR>',
    'coc#pum#visible() ? coc#pum#confirm() : "<C-g>u<CR><c-r>=coc#on_enter()<CR>"',
    { silent = true, expr = true }
)

function _G.check_back_space()
    local col = fn.col('.') - 1
    if col == 0 or fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end
