-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Telescope import
vim.keymap.set("n", "<leader>ci", "<cmd>Telescope import<cr>", { desc = "Telescope [i]mport" })

-- Package Info:
-- Show dependency versions
vim.keymap.set(
  { "n" },
  "<LEADER>ns",
  require("package-info").show,
  { silent = true, noremap = true, desc = "Show node dependency versions" }
)

-- Hide dependency versions
vim.keymap.set(
  { "n" },
  "<LEADER>nc",
  require("package-info").hide,
  { silent = true, noremap = true, desc = "Hide node dependency versions" }
)

-- Toggle dependency versions
vim.keymap.set(
  { "n" },
  "<LEADER>nt",
  require("package-info").toggle,
  { silent = true, noremap = true, desc = "Toggle node dependency versions" }
)

-- Update dependency on the line
vim.keymap.set(
  { "n" },
  "<LEADER>nu",
  require("package-info").update,
  { silent = true, noremap = true, desc = "Update dependency on the line" }
)

-- Delete dependency on the line
vim.keymap.set(
  { "n" },
  "<LEADER>nd",
  require("package-info").delete,
  { silent = true, noremap = true, desc = "Delete dependency on the line" }
)

-- Install a new dependency
vim.keymap.set(
  { "n" },
  "<LEADER>ni",
  require("package-info").install,
  { silent = true, noremap = true, desc = "Install a new dependency" }
)

-- Install a different dependency version
vim.keymap.set(
  { "n" },
  "<LEADER>np",
  require("package-info").change_version,
  { silent = true, noremap = true, desc = "Install a different dependency version" }
)
