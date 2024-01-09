---@diagnostic disable: missing-fields
return {
  "neovim/nvim-lspconfig",
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()

    keys[#keys + 1] = { "gr", "<cmd>Telescope lsp_references show_line=false<cr>", desc = "References" }
    keys[#keys + 1] = { "gX", "<cmd>lua print('hello world')<cr>", desc = "Hello World" }

    -- disable a keymap
    -- keys[#keys + 1] = { "K", false }
  end,
  opts = {
    ---@type lspconfig.options
    servers = {
      svelte = {
        -- on_attach = function(client)
        --   vim.api.nvim_create_autocmd("BufWritePost", {
        --     pattern = { "*.js", "*.ts", "*.svelte" },
        --     callback = function(ctx)
        --       P(ctx)
        --       client.notify("$/onDidChangeTsOrJsFile", { uri = ctx.match })
        --     end,
        --   })
        -- end,
      },
    },
  },
}
