local lspconfig = require'lspconfig'
local completion = require'completion'

-- Diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    virtual_text = false,
    signs = true,
    update_in_insert = true,
  }
)

local function on_attach(client)
  print('Attaching to ' .. client.name)
  completion.on_attach(client)
    if client.resolved_capabilities.document_formatting then
        cmd('autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()')
    end
end

local default_config = {
  on_attach = on_attach,
}

