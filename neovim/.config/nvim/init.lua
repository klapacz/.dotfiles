local iscode = function()
    return vim.fn.exists('g:vscode') == 1
end


if iscode() then
    vim.keymap.set("n", "gN", "<cmd>Tabnew<cr>")
    vim.keymap.set("n", "H", "<cmd>Tabprev<cr>")
    vim.keymap.set("n", "L", "<cmd>Tabnext<cr>")
end