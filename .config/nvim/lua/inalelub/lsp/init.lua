local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("inalelub.lsp.mason")
require("inalelub.lsp.handlers").setup()
require("inalelub.lsp.null-ls")
