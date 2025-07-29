-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>ta", function()
  vim.cmd("terminal ansible-playbook " .. vim.fn.expand("%"))
end, { desc = "Run ansible-playbook in terminal" })
