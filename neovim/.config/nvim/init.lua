local iscode = function()
  return vim.fn.exists('g:vscode') == 1
end

-- Set leader key to space
vim.g.mapleader = ' '


if iscode() then
  vim.keymap.set("n", "gN", "<cmd>Tabnew<cr>")
  vim.keymap.set("n", "H", "<cmd>Tabprev<cr>")
  vim.keymap.set("n", "L", "<cmd>Tabnext<cr>")
end

vim.keymap.set({ "n", "v" }, "<leader>p", "\"_dP")
vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")
vim.keymap.set({ "n", "v" }, "<leader>y", "\"+y")
