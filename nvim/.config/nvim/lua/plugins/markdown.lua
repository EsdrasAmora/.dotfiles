return {
  -- use original version from toppair after https://github.com/toppair/peek.nvim/issues/47 is fixed
  -- "toppair/peek.nvim",
  -- does not work with file links.
  "Saimo/peek.nvim",
  event = { "BufRead", "BufNewFile" },
  build = "deno task --quiet build:fast",
  config = function()
    require("peek").setup({
      app = "chromium",
    })
    vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
    vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
  end,
}
