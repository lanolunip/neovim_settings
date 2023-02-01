local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.set_preferences({
  suggest_lsp_servers = false
})
lsp.setup()
