local ok, _ = pcall(require, 'paq')
if ok then
  require "paq" {
    "savq/paq-nvim";
    "ggandor/leap.nvim";
    "jamessan/vim-gnupg",
    "folke/tokyonight.nvim",
    "nvim-lualine/lualine.nvim",
  }
end

local ok, _ = pcall(require, 'leap')
if ok then
	require('leap').add_default_mappings()
end

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

vim.keymap.set({ "n", "x" }, "<leader>p", "\"_dP")
vim.keymap.set({ "n", "x" }, "<leader>d", "\"_d")
vim.keymap.set({ "n", "x" }, "<leader>y", "\"+y")

if vim.g.vscode then
  vim.keymap.set("n", "<leader>w", "<cmd>Write<cr>")

  vim.keymap.set("n", "gN", "<cmd>Tabnew<cr>")
  vim.keymap.set("n", "H", "<cmd>Tabprev<cr>")
  vim.keymap.set("n", "L", "<cmd>Tabnext<cr>")
else
  -- lualine
  local ok, _ = pcall(require, 'lualine')
  if ok then
    require('lualine').setup()
  end

  vim.cmd[[colorscheme tokyonight]]

  vim.keymap.set("n", "<leader>w", "<cmd>write<cr>")

  vim.keymap.set("n", "gN", "<cmd>tabnew<cr>")
  vim.keymap.set("n", "H", "<cmd>tabprev<cr>")
  vim.keymap.set("n", "L", "<cmd>tabnext<cr>")
end
