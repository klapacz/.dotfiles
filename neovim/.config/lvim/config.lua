lvim.builtin.bufferline.active = false;
lvim.builtin.lualine.options.theme = "tokyonight"

lvim.colorscheme = "tokyonight"

lvim.plugins = {
	"folke/tokyonight.nvim",
	"jamessan/vim-gnupg",
	"ggandor/leap.nvim",
}

local ok, _ = pcall(require, 'leap')
if ok then
	require('leap').add_default_mappings()
end

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
