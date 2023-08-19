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
