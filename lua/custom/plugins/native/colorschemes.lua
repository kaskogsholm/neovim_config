return {
  -- NOTE Colorscheme
  -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is.
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  'sainnhe/gruvbox-material',
  {
    'luisiacc/gruvbox-baby',
    lazy = false,
    priority = 1000,
    -- configure and set on startup
    config = function()
      -- vim.o.background = 'dark'
      -- local c = require('vscode.colors').get_colors()
      -- require('vscode').setup {
      --   -- Alternatively set style in setup
      --   -- style = 'light'
      --   -- Enable transparent background
      --   transparent = false,
      --   -- Enable italic comment
      --   italic_comments = false,
      --   -- Underline `@markup.link.*` variants
      --   underline_links = true,
      --   -- Disable nvim-tree background color
      --   disable_nvimtree_bg = true,
      --   -- Override colors (see ./lua/vscode/colors.lua)
      --   color_overrides = {
      --     vscLineNumber = '#FFFFFF',
      --   },
      --   -- Override highlight groups (see ./lua/vscode/theme.lua)
      --   group_overrides = {
      --     -- this supports the same val table as vim.api.nvim_set_hl
      --     -- use colors from this colorscheme by requiring vscode.colors!
      --     Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
      --   },
      -- }
      -- require('vscode').load()
      -- load the theme without affecting devicon colors.
      vim.cmd.colorscheme 'gruvbox-baby'
    end,
  },
  {
    'tiagovla/tokyodark.nvim',
    lazy = false,
    opts = {
      -- custom options here
    },
  },
}
