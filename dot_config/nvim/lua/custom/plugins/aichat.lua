return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'nvim-lua/plenary.nvim', branch = 'master' },
    },
    build = 'make tiktoken',
    setup = function()
      -- local chat = require 'CopilotChat'
    end,
    opts = {
      -- See Configuration section for options
      highlight_headers = false,
      separator = '---',
      error_header = '> [!ERROR] Error',
      selection = function(source)
        return require('CopilotChat.select').visual(source)
          or require('CopilotChat.select').line(source)
      end,
    },
    keys = {
      {
        '<leader>ap',
        '<cmd>CopilotChatPrompts<CR>',
        mode = { 'n', 'v' },
        desc = '[A]i [P]rompt',
      },
    },
  },
}
