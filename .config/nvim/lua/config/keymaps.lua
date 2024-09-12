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

-- Neovide
vim.g.neovide_scale_factor = 1.0
local change_scale_factor = function(delta)
  vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
end
vim.keymap.set({ "n", "v", "i" }, "<C-=>", function()
  change_scale_factor(1.25)
end)
vim.keymap.set({ "n", "v", "i" }, "<C-->", function()
  change_scale_factor(1 / 1.25)
end)

-- Terminal
local Terminal = require("toggleterm.terminal").Terminal
-- local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
--
-- local lazygit_toggle = function()
--   lazygit:toggle()
-- end

keymap.set("n", "<leader>tt", "<cmd>ToggleTerm direction=float<cr>", { desc = "Toggle Terminal" })
keymap.set("t", "<leader>tt", "<C-\\><C-n><C-w>l", { desc = "Hide Terminal" })
