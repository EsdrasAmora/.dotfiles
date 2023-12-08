return {
  {
    "Saecki/crates.nvim",
    event = { "BufRead Cargo.toml" },
    keys = {
      {
        "<leader>ccf",
        function()
          require("crates").show_features_popup()
        end,
        desc = "Cargo - crate features",
      },
      {
        "<leader>ccp",
        function()
          require("crates").show_crate_popup()
        end,
        desc = "Cargo - list crates",
      },
      {
        "<leader>ccd",
        function()
          require("crates").show_dependencies_popup()
        end,
        desc = "Cargo - crate dependencies",
      },
    },
    opts = {
      src = {
        cmp = { enabled = true },
      },
      null_ls = {
        enabled = true,
        name = "crates.nvim",
      },
    },
  },
}
