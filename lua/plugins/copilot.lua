return {
  -- disable copilot-cmp
  { "zbirenbaum/copilot-cmp", enabled = false },
  { "AndreM222/copilot-lualine" },
  { "nvim-lualine/lualine.nvim" },
  {
    "zbirenbaum/copilot.lua",
    -- event = "VeryLazy",
    cmd = "Copilot",
    build = ":Copilot auth",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({ suggestion = { auto_trigger = true, keymap = { accept = false } } })
      vim.keymap.set("i", "<S-Tab>", function()
        if require("copilot.suggestion").is_visible() then
          require("copilot.suggestion").accept()
        else
          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<S-Tab>", true, false, true), "n", false)
        end
      end, { desc = "Super Tab" })
      vim.keymap.set("i", "<Tab>", function()
        if require("copilot.suggestion").is_visible() then
          require("copilot.suggestion").accept()
        else
          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
        end
      end, { desc = "Super Tab" })
    end,
    -- config = function()
    --   require("copilot").setup({
    --     panel = {
    --       enabled = true,
    --       auto_refresh = true,
    --     },
    --     suggestion = {
    --       accept = false,
    --       enabled = true,
    --       auto_trigger = true,
    --       keymap = {
    --         -- accept = "<M-Tab>",
    --       },
    --     },
    --     filetypes = {
    --       javascript = true,
    --       typescript = true,
    --       typescriptreact = true,
    --       markdown = true,
    --       help = true,
    --       lua = true,
    --     },
    --   })
    -- end,
  },
}
