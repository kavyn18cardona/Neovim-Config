local mason_status, mason = pcall(require, "mason")
if not mason_status then
  return
end

local mlsp_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mlsp_status then
  return
end

mason.setup()

mason_lspconfig.setup({
  ensure_installed = {
    --"ts_ls",
    --"html",
    --"cssls",
    --"tailwindcss",
    "lua_ls",
    "clangd",
  },
})
