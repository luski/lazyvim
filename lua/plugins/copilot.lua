return {
  -- disable copilot-cmp
  { "zbirenbaum/copilot-cmp", enabled = false },
  { "AndreM222/copilot-lualine" },
  { "nvim-lualine/lualine.nvim" },
  {
    "zbirenbaum/copilot.lua",
    event = "VeryLazy",
    cmd = "Copilot",
    build = ":Copilot auth",
    config = function()
      require("copilot").setup({
        panel = {
          enabled = true,
          auto_refresh = true,
        },
        suggestion = {
          accept = false,
          enabled = true,
          auto_trigger = true,
          keymap = {
            -- accept = "<M-Tab>",
          },
        },
        filetypes = {
          javascript = true,
          typescript = true,
          typescriptreact = true,
          markdown = true,
          help = true,
          lua = true,
        },
      })
    end,
  },
}
