return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      { "windwp/nvim-ts-autotag", opts = {}, enable = true, enable_close_on_slash = false },
    },
    opts = function(_, opts)
      -- extend default languages
      vim.list_extend(opts.ensure_installed, {
        "tsx",
        "typescript",
        "rust",
      })
    end,
  },
}
