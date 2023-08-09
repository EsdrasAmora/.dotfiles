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
  },
  {
    "axkirillov/easypick.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      local easypick = require("easypick")
      easypick.setup({
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
