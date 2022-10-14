lvim.builtin.bufferline.active = false;
lvim.builtin.lualine.options.theme = "tokyonight"

lvim.colorscheme = "tokyonight"

lvim.plugins = {
  "folke/tokyonight.nvim",
  "jamessan/vim-gnupg"
}

lvim.keys.normal_mode["gT"] = "<cmd>terminal<cr>"
lvim.keys.normal_mode["gN"] = "<cmd>tabnew<cr>"
lvim.keys.normal_mode["H"] = "<cmd>tabprev<cr>"
lvim.keys.normal_mode["L"] = "<cmd>tabnext<cr>"

lvim.keys.normal_mode["<leader>p"] = "\"_dP"
lvim.keys.visual_mode["<leader>p"] = "\"_dP"

lvim.keys.normal_mode["<leader>d"] = "\"_d"
lvim.keys.visual_mode["<leader>d"] = "\"_d"

lvim.keys.normal_mode["<leader>y"] = "\"+y"
lvim.keys.visual_mode["<leader>y"] = "\"+y"

-- Do not use system clipboard
vim.opt.clipboard = ""
