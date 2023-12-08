return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
  },
  {
    "echasnovski/mini.files",
    version = "*",
    -- required if using `nvim <path>`
    lazy = false,
    keys = {
      {
        "<leader>e",
        function()
          if not MiniFiles.close() then
            MiniFiles.open(vim.api.nvim_buf_get_name(0), false)
          end
        end,
        desc = "Toggle MiniFiles",
      },
    },
    opts = {
      windows = {
        preview = true,
        width_focus = 40,
        width_nofocus = 20,
        width_preview = 70,
      },
      mappings = {
        go_in_plus = "l",
      },
    },
  },
}
