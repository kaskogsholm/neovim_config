return {

  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    config = function()
      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
      --  - ci'  - [C]hange [I]nside [']quote
      require('mini.ai').setup { n_lines = 500 }

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require('mini.surround').setup()
      -- require('mini.comment').setup()
      --  Check out: https://github.com/echasnovski/mini.nvim
    end,
  },
  {
    'numToStr/Comment.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
      'JoosepAlviste/nvim-ts-context-commentstring',
    },
    config = function()
      -- import comment plugin safely
      local comment = require 'Comment'

      local ts_context_commentstring = require 'ts_context_commentstring.integrations.comment_nvim'

      -- enable comment
      comment.setup {
        -- for commenting tsx and jsx files
        pre_hook = ts_context_commentstring.create_pre_hook(),
      }
    end,
  },
  {
    'ggandor/leap.nvim',
    lazy = false,
    dependencies = {
      'tpope/vim-repeat',
    },
    config = function()
      vim.keymap.set({ 'n', 'x', 'o' }, 'm', '<Plug>(leap-forward)')
      vim.keymap.set({ 'n', 'x', 'o' }, 'M', '<Plug>(leap-backward)')
      vim.keymap.set({ 'n', 'x', 'o' }, 'gm', '<Plug>(leap-from-window)')
      -- Define equivalence classes for brackets and quotes, in addition to
      -- the default whitespace group.
      require('leap').opts.equivalence_classes = { ' \t\r\n', '([{', ')]}', '\'"`' }

      -- Use the traversal keys to repeat the previous motion without explicitly
      -- invoking Leap.
      require('leap.user').set_repeat_keys('<enter>', '<backspace>')
      -- If using the default mappings (`gs` for multi-window mode), you can
      -- map e.g. `gS` here.
      vim.keymap.set({ 'n', 'o' }, 'gM', function()
        require('leap.remote').action()
      end)
    end,
  },
}
