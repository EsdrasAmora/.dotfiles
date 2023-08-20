return {
  "serenevoid/kiwi.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    {
      "<Leader>kw",
      function()
        require("kiwi").open_wiki_index()
      end,
      desc = "Open wiki index",
    },
    {
      "<Leader>kd",
      function()
        require("kiwi").open_diary_index()
      end,
      desc = "Open diary index",
    },
    {
      "<Leader>kn",
      function()
        require("kiwi").open_diary_new()
      end,
      desc = "Open diary new",
    },
    {
      "<Leader>kt",
      function()
        require("kiwi").todo.toggle()
      end,
      desc = "Toggle Todo",
    },
  },
}
