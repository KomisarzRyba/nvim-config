return {
  {
    'tzachar/cmp-ai',
    dependencies = 'nvim-lua/plenary.nvim',
    config = function()
      local cmp_ai = require 'cmp_ai.config'
      cmp_ai:setup {
        max_lines = 16,
        provider = 'Ollama',
        provider_options = {
          model = 'codellama:code',
        },
        notify = true,
        notify_callback = function(msg)
          require('fidget').notify(msg, vim.log.levels.INFO, {
            skip_history = true,
          })
        end,
        run_on_every_keystroke = false,
        ignored_file_types = {
          -- default is not to ignore
          -- uncomment to ignore in lua:
          -- lua = true
        },
      }
    end,
  },
}
