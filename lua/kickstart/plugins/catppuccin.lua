return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    opts = {
      no_italic = true,
      no_bold = true,
      transparent_background = true,
      integrations = {
        noice = true,
        dashboard = true,
        diffview = true,
        mason = true,
        neotree = true,
        neogit = true,
        telescope = true,
        which_key = true,
      },
    },
    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      vim.cmd.colorscheme 'catppuccin-mocha'
      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}
