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

map({ 'n', 'x' }, '<leader>y', '"+y', { desc = 'Copy from system clipboard' })
map({ 'n', 'x' }, '<leader>Y', '"+yg_', { desc = 'Copy from system clipboard' })
map({ 'n', 'x' }, '<leader>p', '"+p', { desc = 'Paste from system clipboard' })
map({ 'n', 'x' }, '<leader>P', '"+P', { desc = 'Paste from system clipboard' })

map ("n", "<leader>j", "<cmd> ALENext <cr>",
  { desc = "Go to next ALE issue" })
map ("n", "<leader>k", "<cmd> ALEPrevious <cr>",
  { desc = "Go to previous ALE issue" })
