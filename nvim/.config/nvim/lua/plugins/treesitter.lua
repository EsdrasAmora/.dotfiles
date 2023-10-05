return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      { "windwp/nvim-ts-autotag", opts = {} },
    },
    opts = function(_, opts)
      -- extend default languages
      vim.list_extend(opts.ensure_installed, {
        "tsx",
        "typescript",
        "rust",
        "markdown",
      })
    end,
  },
}
