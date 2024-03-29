-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local my_group = vim.api.nvim_create_augroup("MyGroup", { clear = false })

vim.api.nvim_create_user_command("SayHello", 'echo "Hello world!"', {})

vim.api.nvim_create_user_command("NoEmitTypescript", function()
  vim.cmd.compiler("tsc")
  vim.cmd.make("--noEmit")
end, {})

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = { "*.postcss" },
  group = my_group,
  command = "set filetype=css",
})

-- vim.api.nvim_create_autocmd("TermOpen", {
--   group = my_group,
--   pattern = "*",
--   command = "startinsert | set winfixheight",
-- })
