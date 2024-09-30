-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- ../plugins/git.lua
-- /home/amora/.config/nvim/lua/config/options.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<C-d>", "<C-d>zz", { remap = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { remap = true })
vim.keymap.set("n", "<Leader>o", "o<Esc>", { remap = true })
vim.keymap.set("n", "<Leader>O", "O<Esc>", { remap = true })
vim.keymap.set("n", "x", '"_x')
vim.keymap.set("n", "vp", "viwp")
-- vim.keymap.set({ "n", "v", "i" }, "<CAPS-lock>", "<esc>")

vim.keymap.del("n", "[b")
vim.keymap.del("n", "]b")

vim.keymap.del("n", "<S-h>")
vim.keymap.del("n", "<S-l>")

vim.keymap.del("n", "<leader><tab>l")
vim.keymap.del("n", "<leader><tab>f")
vim.keymap.del("n", "<leader><tab><tab>")
vim.keymap.del("n", "<leader><tab>]")
vim.keymap.del("n", "<leader><tab>[")
vim.keymap.del("n", "<leader><tab>d")
