-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.autoformat = false
local is_tmux = os.getenv("TMUX")
-- Not working, don't know why(2024.4.20)
-- just use TMUX copy mode instead
if is_tmux then
  vim.g.clipboard = {
    name = 'tmuxClipboard',
    copy = {
          ['+'] = {'tmux', 'load-buffer', '-w', '-'},
          ['*'] = {'tmux', 'load-buffer', '-w', '-'},
    },
    paste = {
          ['+'] = {'tmux', 'save-buffer', '-'},
          ['*'] = {'tmux', 'save-buffer', '-'},
      },
  cache_enabled = true,
  }
end
