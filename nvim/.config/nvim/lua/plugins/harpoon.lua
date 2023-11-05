return {
  "ThePrimeagen/harpoon",
  keys = {
    {
      "<leader>ha",
      function()
        require("harpoon.mark").add_file()
      end,
      desc = "Harpoon - Add",
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
}
