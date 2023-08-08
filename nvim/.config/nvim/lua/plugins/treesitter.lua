return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    { "windwp/nvim-ts-autotag", opts = {}, enable = true, enable_close_on_slash = false },
  },
  opts = function(_, opts)
    -- add tsx and treesitter
    vim.list_extend(opts.ensure_installed, {
      "tsx",
      "typescript",
      "rust",
    })
  end,
}
