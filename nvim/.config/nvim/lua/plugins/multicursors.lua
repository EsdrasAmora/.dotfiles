return {
  "smoka7/multicursors.nvim",
  event = "VeryLazy",
  dependencies = {
    "smoka7/hydra.nvim",
  },
  opts = {
    hint_config = {
      border = "rounded",
      position = "bottom-right",
    },
    generate_hints = {
      normal = true,
      insert = true,
      extend = true,
      config = {
        column_count = 1,
      },
    },
  },
  cmd = { "MCstart", "MCvisual", "MCclear", "MCpattern", "MCvisualPattern", "MCunderCursor" },
  keys = {
    {
      mode = { "v", "n" },
      "<Leader>m",
      "<cmd>MCstart<cr>",
      desc = "Create a selection for selected text or word under the cursor",
    },
  },
  enabled = false,
}
