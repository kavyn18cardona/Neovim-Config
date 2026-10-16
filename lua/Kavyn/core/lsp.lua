-- Neovim 0.11+ native LSP config (no lspconfig framework)

vim.lsp.config("clangd", {
  cmd = { "/opt/homebrew/opt/llvm/bin/clangd" },
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
})

vim.lsp.enable("clangd")

