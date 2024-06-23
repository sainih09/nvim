-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
opt.conceallevel = 0
opt.inccommand = "split"
opt.scrolloff = 10
opt.hlsearch = true

if vim.g.neovide then
  vim.o.guifont = "JetBrainsMono Nerd Font:h12"
  -- vim.o.guifont = 'CaskaydiaCove Nerd Font:h13'
  vim.opt.linespace = 5
  vim.g.neovide_input_use_logo = 1
  vim.g.neovide_scroll_animation_length = 0.2
  vim.g.neovide_confirm_quit = true
  vim.g.neovide_cursor_animation_length = 0.2
  vim.g.neovide_cursor_trail_size = 0.1
  vim.g.neovide_cursor_antialiasing = true
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_confirm_quit = true
  vim.g.neovide_input_macos_alt_is_meta = true
  vim.g.neovide_remember_window_size = true
  vim.keymap.set("n", "<D-s>", ":w<CR>") -- Save
  vim.keymap.set("v", "<D-c>", '"+y') -- Copy
  vim.keymap.set("n", "<D-v>", '"+P') -- Paste normal mode
  vim.keymap.set("v", "<D-v>", '"+P') -- Paste visual mode
  vim.keymap.set("c", "<D-v>", "<C-R>+") -- Paste command mode
  vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode
end
