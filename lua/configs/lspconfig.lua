local configs = require("nvchad.configs.lspconfig")
local lspconfig = require "lspconfig"

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

local servers = {
  "intelephense",
  "html",
  "cssls",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_init = on_init,
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
