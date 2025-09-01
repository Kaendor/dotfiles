vim.keymap.set(
  { 'n', 'v' },
  '<C-a>',
  '<cmd>CodeCompanionActions<cr>',
  { noremap = true, silent = true }
)
vim.keymap.set(
  { 'n', 'v' },
  '<LocalLeader>a',
  '<cmd>CodeCompanionChat Toggle<cr>',
  { noremap = true, silent = true }
)
vim.keymap.set(
  'v',
  'ga',
  '<cmd>CodeCompanionChat Add<cr>',
  { noremap = true, silent = true }
)

-- Expand 'cc' into 'CodeCompanion' in the command line
vim.cmd [[cab cc CodeCompanion]]

return {
  'olimorris/codecompanion.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  opts = {
    display = {
      action_palette = {
        provider = 'snacks',
      },
    },
    strategies = {
      chat = {
        -- TODO: move to anthropic once setup
        adapter = 'copilot',
      },
      inline = {
        adapter = 'copilot',
      },
      cmd = {
        adapter = 'copilot',
      },
    },
    -- NOTE: The log_level is in `opts.opts`
    opts = {
      log_level = 'DEBUG', -- or "TRACE"
    },
  },
}
