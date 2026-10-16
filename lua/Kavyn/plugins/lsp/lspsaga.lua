local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
  return
end

saga.setup({
  ui = {
    border = "rounded",
  },

  move_in_saga = { prev = "<C-k>", next = "<C-j>" },

  finder = {
    keys = {
      open = "<CR>",
    },
  },
})
