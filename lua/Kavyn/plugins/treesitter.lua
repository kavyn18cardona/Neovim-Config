local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

treesitter.setup({
  highlight = {
    enable = true,
  },
  indent = { 
    enable = true, 
  },
  ensure_installed = {
    "lua",
    "vim",
    "cpp",
    "vimdoc",
    "query",
    "comment",
    "cmake",
    "bash",
  },
  auto_install = true
})
