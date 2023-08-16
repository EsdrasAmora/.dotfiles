return {
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
    -- add QUICKFIX
    opts = {
      defaults = {
        sort_lastused = true,
        wrap_results = true,
        path_display = { "truncate" },
        mappings = {
          i = {
            ["<c-j>"] = function(...)
              vim.notify("Refine query")
              return require("telescope.actions").to_fuzzy_refine(...)
            end,
          },
        },
      },
    },
  },
  {
    "axieax/urlview.nvim",
    opts = {
      default_picker = "telescope",
    },
  },
  {
    "axkirillov/easypick.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      local easypick = require("easypick")
      easypick.setup({
        -- TODO:
        -- create a list of hunks instead
        -- or maybe show the file, but with a preview of changes like vscode
        pickers = {
          {
            name = "Uncommited changes",
            command = "git status -s | awk '{print $2}'",
            previewer = easypick.previewers.default(),
          },
        },
      })
    end,
    keys = {
      { "<Leader>fu", "<cmd>Easypick Uncommited changes<CR>", desc = "Git Uncommited" },
    },
  },
}
