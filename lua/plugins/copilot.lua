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
      require("copilot").setup({
        filetypes = { yaml = true, sh = true },
        suggestion = { auto_trigger = true, keymap = { accept = false } },
      })
      vim.keymap.set("i", "<Tab>", function()
        if require("copilot.suggestion").is_visible() then
          require("copilot.suggestion").accept()
        else
          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
        end
      end, { desc = "Super Tab" })
    end,
  },
}
