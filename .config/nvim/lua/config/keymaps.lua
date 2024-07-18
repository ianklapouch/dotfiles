local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Center cursor after move
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "<C-d>", "<C-d>zz")

keymap.set("n", "n", "nzz")
keymap.set("n", "N", "Nzz")

-- Delete text without affecting default register
keymap.set("n", "x", '"_x')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")
-- Delete a word backwards
keymap.set("n", "db", 'vb"_d')

-- Disable continuations
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

--Undo Tree
vim.keymap.set("n", "<leader>U", vim.cmd.UndotreeToggle, { desc = "Toggle Undotree" })

-- Alias
keymap.set("i", "<C-c>", "<Esc>")

-- Supermaven
require("supermaven-nvim").setup({
  keymaps = {
    accept_suggestion = "<Tab>",
    clear_suggestion = "<C-]>",
    accept_word = "<C-j>",
  },
})
