local lsp = require("lspconfig")
local coq = require("coq")


--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    "documentation",
    "detail",
    "additionalTextEdits",
  },
}


-- Python LSP
lsp.pyright.setup(coq.lsp_ensure_capabilities(
{
    cmd = {"pyright-langserver", "--stdio"},
    filetypes = {"python"},
    settings = {python = {
                            analysis = {autoSearchPaths = true,
                                        diagnosticMode = "workspace",
                                        useLibraryCodeForTypes = true
                                        }
                         }
                },
    single_file_support = true,
}))

-- LSP Prevents inline buffer annotations
vim.diagnostic.open_float()
-- vim.lsp.diagnostic.show_line_diagnostics() -- deprecated with openfloat
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = false,
  signs = true,
  underline = true,
  update_on_insert = false,
})

local signs = {
  Error = "ﰸ",
  Warn = "",
  Hint = "",
  Info = "",
}
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = nil })
end

-- vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.lsp.diagnostic.open_float({focusable=false})]])
