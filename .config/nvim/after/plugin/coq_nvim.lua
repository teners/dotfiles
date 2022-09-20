local lsp = require "lspconfig"
local coq = require "coq"

lsp.pyright.setup(coq.lsp_ensure_capabilities())
lsp.jedi_language_server.setup{
  coq.lsp_ensure_capabilities({
    on_attach = function(client, bufnr)
      navic.attach(client, bufnr)
    end
  })
}
--coq.lsp_ensure_capabilities())
