require('plugins')

-- Set leader key to space
vim.g.mapleader = ' '

-- do not use system clipboard (override lvim settings)
vim.opt.clipboard = ""

-- show existing tab with 4 spaces width
vim.opt.tabstop = 4
-- when indenting with '>', use 4 spaces width
vim.opt.shiftwidth = 4
-- do not change spaces to tabs
vim.opt.expandtab = false

-- show whitespaes
vim.opt.list = true

-- insert date
vim.keymap.set({ "n", "x" }, "<leader>id", "<cmd>r! date '+\\%Y-\\%m-\\%d'<cr>")

vim.keymap.set({ "n", "x" }, "<leader>p", "\"_dP")
vim.keymap.set({ "n", "x" }, "<leader>d", "\"_d")
vim.keymap.set({ "n", "x" }, "<leader>y", "\"+y")

if vim.g.vscode then
  vim.keymap.set("n", "<leader>w", "<cmd>Write<cr>")
  vim.keymap.set("n", "<leader>q", "<cmd>Quit<cr>")

  vim.keymap.set("n", "gN", "<cmd>Tabnew<cr>")
  vim.keymap.set("n", "H", "<cmd>Tabprev<cr>")
  vim.keymap.set("n", "L", "<cmd>Tabnext<cr>")
else
  vim.keymap.set("n", "<leader>w", "<cmd>write<cr>")
  vim.keymap.set("n", "<leader>q", "<cmd>quit<cr>")

  vim.keymap.set("n", "gN", "<cmd>tabnew<cr>")
  vim.keymap.set("n", "H", "<cmd>tabprev<cr>")
  vim.keymap.set("n", "L", "<cmd>tabnext<cr>")
end
