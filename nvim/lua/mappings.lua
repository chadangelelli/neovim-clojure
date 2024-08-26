require "nvchad.mappings"

local map = vim.keymap.set

map("n", "<localleader><space>", "<cmd> nohlsearch <cr>",
  { desc = "Remove any highlighting" })

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<localleader>b", function()
  require "base46".toggle_transparency()
end, { desc = "Toggle background" })
