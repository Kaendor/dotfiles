return {
  'CopilotC-Nvim/CopilotChat.nvim',
  dependencies = {
    { 'nvim-lua/plenary.nvim', branch = 'master' },
  },
  build = 'make tiktoken',
}
-- config = function()
--   -- local chat = require 'CopilotChat'
--   -- vim.keymap.set('n', '<leader>ap', chat.select_prompt, { desc = '[A]i [P]rompt' })
-- end,
