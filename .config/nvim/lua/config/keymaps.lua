-- Splits
vim.keymap.set("n", "ss", ":split<CR>")
vim.keymap.set("n", "sv", ":vsplit<CR>")

-- Center cursor after move
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

-- Delete text without affecting default register
vim.keymap.set("n", "x", '"_x')

-- Delete a word backwards
vim.keymap.set("n", "db", 'vb"_d')

-- Disable continuations
vim.keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
vim.keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

--Undo Tree
vim.keymap.set("n", "<leader>U", vim.cmd.UndotreeToggle, { desc = "Toggle Undotree" })

-- Alias
vim.keymap.set("i", "<C-c>", "<Esc>")

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
vim.keymap.set("n", "<F11>", function()
  local q = vim.fn.getreg('q')
  vim.fn.setreg('q', q .. 'zzz')
end)
