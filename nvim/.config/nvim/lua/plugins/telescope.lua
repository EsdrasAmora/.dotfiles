return {
  {
    "telescope.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        config = function()
          require("telescope").load_extension("fzf")
        end,
      },
    },
    keys = {
      { "<Leader>sq", "<cmd>Telescope quickfix<CR>", desc = "Telescope quickfix" },
    },
    opts = {
      --TODO: I don't know how to load this telescope extension. https://github.com/Marskey/telescope-sg
      -- extensions = {
      --   ast_grep = {
      --     command = {
      --       "ast-grep",
      --       "--json=stream",
      --     },
      --     grep_open_files = false,
      --     lang = nil,
      --   },
      -- },
      defaults = {
        sort_lastused = true,
        wrap_results = true,
        path_display = { "truncate" },
        mappings = {
          i = {
            ["<c-j>"] = function(...)
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
