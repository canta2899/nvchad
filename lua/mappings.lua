require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "d", '"_d')
map("v", "d", '"_d')
map("n", "<C-u>", "<C-u>zz")
map("n", "<C-d>", "<C-d>zz")
map("v", "<", "<gv")
map("v", ">", ">gv")
map("n", "<leader>ca", function()
    vim.lsp.buf.code_action()
end, { desc = "Code Action" })
map("n", "<leader>K", function()
    vim.diagnostic.open_float()
end, { desc = "Open diagnostic float" })

map("i", "<C-J>", 'copilot#Accept("\\<CR>")', {
    expr = true,
    replace_keycodes = false,
})

 vim.keymap.set({ "n", "t" }, "<C-i>", function()
     require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
 end)

vim.g.copilot_no_tab_map = true

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
