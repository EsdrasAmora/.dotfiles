return {
  "ThePrimeagen/harpoon",
  keys = {
    {
      "<leader>ha",
      function()
        require("harpoon.mark").add_file()
      end,
      desc = "Harpoon - Add file",
    },
    {
      "<leader>hr",
      function()
        require("harpoon.mark").rm_file(vim.api.nvim_buf_get_name(0))
      end,
      desc = "Harpoon - remove current file",
    },
    {
      "<leader>hh",
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      desc = "Harpoon - toggle menu/index",
    },
    {
      "<S-h>",
      function()
        require("harpoon.ui").nav_prev()
      end,
      desc = "Harpoon - previous file",
    },
    {
      "<S-l>",
      function()
        require("harpoon.ui").nav_next()
      end,
      desc = "Harpoon - next file",
    },
    {
      "<C-A-1>",
      function()
        print("testeeee")
      end,
      desc = "Harpoon - next file",
    },
    {
      "<C-1>",
      function()
        require("harpoon.ui").nav_file(1)
      end,
    },
    {
      "<C-2>",
      function()
        require("harpoon.ui").nav_file(2)
      end,
      desc = "Harpoon - file 1",
    },
    {
      "<C-3>",
      function()
        require("harpoon.ui").nav_file(3)
      end,
    },
    {
      "<C-4>",
      function()
        require("harpoon.ui").nav_file(4)
      end,
    },
    {
      "<C-5>",
      function()
        require("harpoon.ui").nav_file(5)
      end,
    },
    {
      "<C-6>",
      function()
        require("harpoon.ui").nav_file(6)
      end,
    },
    {
      "<C-7>",
      function()
        require("harpoon.ui").nav_file(7)
      end,
    },
    {
      "<C-8>",
      function()
        require("harpoon.ui").nav_file(8)
      end,
    },
    {
      "<C-9>",
      function()
        require("harpoon.ui").nav_file(9)
      end,
    },
    {
      "<A-1>",
      function()
        require("harpoon.term").gotoTerminal(1)
      end,
    },
    {
      "<A-2>",
      function()
        require("harpoon.term").gotoTerminal(2)
      end,
    },
    {
      "<A-3>",
      function()
        require("harpoon.term").gotoTerminal(3)
      end,
    },
  },

  dependencies = {
    "nvim-lua/plenary.nvim",
  },
}
--maybe delete persistence.nvim
-- vim.keymap.del("n", "[b")
-- vim.keymap.del("n", "]b")
--
-- vim.keymap.del("n", "<S-h>")
-- vim.keymap.del("n", "<S-l>")
--
-- vim.keymap.del("n", "<leader><tab>l")
-- vim.keymap.del("n", "<leader><tab>f")
-- vim.keymap.del("n", "<leader><tab><tab>")
-- vim.keymap.del("n", "<leader><tab>]")
-- vim.keymap.del("n", "<leader><tab>[")
-- vim.keymap.del("n", "<leader><tab>d")
