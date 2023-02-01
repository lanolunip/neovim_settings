local nnoremap = require('em_weh.core.keymap').nnoremap
local inoremap = require('em_weh.core.keymap').inoremap
local nmap = require('em_weh.core.keymap').nmap
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
-- nmap('gd', '<Plug>(coc-definition)', {silent = true})
-- -- Masukan ke coc-settings.json jika ingin merubah behaviour gd
-- -- coc.preferences.jumpCommand": "tab drop atau tabe" open in new tab
-- -- coc.preferences.jumpCommand": "split atau vsplit" open di split atau vsplit

-- -- Use tab for trigger completion with characters ahead and navigate.
-- -- NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
-- -- other plugin before putting this into your config.
-- -- NOTE: There's always complete item selected by default, you may want to enable
-- -- no select by `"suggest.noselect": true` in your configuration file.
-- inoremap(
--     '<TAB>',
--     'v:lua.next_coc_pum()',
--     { silent = true, expr = true, replace_keycodes = false}
-- )

-- inoremap(
--     '<S-TAB>',
--     'v:lua.prev_coc_pum()',
--     { expr = true, replace_keycodes = false}
-- )

-- -- Make <CR> to accept selected completion item or notify coc.nvim to format
-- -- <C-g>u breaks current undo, please make your own choice.
-- inoremap(
--     '<CR>',
--     'v:lua.confirm_coc_pum()',
--     { silent = true, expr = true, replace_keycodes = false}
-- )
-- -- The function is called `t` for `termcodes`.
-- -- You don't have to call it that, but I find the terseness convenient
-- local function t(str)
--     -- Adjust boolean arguments as needed
--     return vim.api.nvim_replace_termcodes(str, true, true, true)
-- end

-- function _G.check_back_space()
--     local col = vim.fn.col('.') - 1
--     return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
-- end

-- function _G.next_coc_pum()
--     if vim.fn['coc#pum#visible']() == 1 then
--         return vim.fn['coc#pum#next'](1)
--     elseif check_back_space() then
--         return t'<Tab>'
--     else
--         return vim.fn['coc#refresh']()
--     end
-- end

-- function _G.prev_coc_pum()
--     if vim.fn['coc#pum#visible']() == 1 then
--         return vim.fn['coc#pum#prev'](1)
--     else
--         return t'<C-h>'
--     end
-- end

-- function _G.confirm_coc_pum()
--     if vim.fn['coc#pum#visible']() == 1 then
--         return vim.fn['coc#pum#confirm']()
--     else
--         return t'<C-g>u<CR><c-r>=coc#on_enter()<CR>'
--     end
-- end
