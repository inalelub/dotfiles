local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("blkniga.lsp.mason")
require("blkniga.lsp.handlers").setup()
require("blkniga.lsp.null-ls")
