-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Fast `jj` in insert mode to exit to normal mode
vim.keymap.set("i", "jj", "<ESC>", { silent = true })

-- Yank current file path to clipboard
vim.keymap.set("n", "<leader>fy", function()
  vim.fn.setreg("+", vim.fn.expand("%"))
  vim.notify("Copied file path to clipboard: " .. vim.fn.expand("%"))
end, { desc = "Yank file path" })
