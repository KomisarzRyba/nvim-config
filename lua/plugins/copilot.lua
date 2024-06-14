return {
  {
    'zbirenbaum/copilot.lua',
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = '<M-CR>',
          accept_word = '<M-l>',
          accept_line = '<M-j>',
        },
      },
      panel = { enabled = false },
      filtypes = {
        markdown = true,
        help = true,
      },
    },
  },
  {
    'zbirenbaum/copilot-cmp',
    dependencies = {
      'copilot.lua',
    },
  },
}
