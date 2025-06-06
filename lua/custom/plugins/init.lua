-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'mrcjkb/rustaceanvim',
  },
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      'sindrets/diffview.nvim', -- optional - Diff integration
      'nvim-telescope/telescope.nvim', -- optional
    },
    config = true,
  },
  {
    'folke/noice.nvim',
    dependencies = {
      'MunifTanjim/nui.nvim',
    },
    event = 'VeryLazy',
    opts = {
      views = {
        cmdline_popup = {
          position = {
            row = '30%',
            col = '50%',
          },
          size = {
            width = 60,
            height = 'auto',
          },
        },
        popupmenu = {
          relative = 'editor',
          position = {
            row = '41%',
            col = '50%',
          },
          size = {
            width = 60,
            height = 10,
          },
          border = {
            style = 'rounded',
            padding = { 0, 1 },
          },
          win_options = {
            winhighlight = { Normal = 'Normal', FloatBorder = 'DiagnosticInfo' },
          },
        },
      },
    },
  },
  {
    'windwp/nvim-ts-autotag',
    opts = {
      enable = true,
      filetypes = { 'vue', 'html', 'tsx', 'jsx' },
    },
  },
  {
    'folke/zen-mode.nvim',
  },
  {
    'rmagatti/goto-preview',
    opts = {
      default_mappings = true,
    },
  },
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = true,
    lazy = false,
    opts = {
      direction = 'float',
    },
    keys = {
      { '<leader>tt', '<cmd>ToggleTerm<cr>', desc = '[T]oggle [T]erm' },
    },
  },
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    opts = {
      theme = 'hyper',
      config = {
        week_header = {
          enable = true,
        },
        shortcut = {
          { desc = '󰊳 Update', group = 'Number', action = 'Lazy update', key = 'u' },
          {
            icon = ' ',
            icon_hl = '@variable',
            desc = 'Files',
            group = 'Label',
            action = 'Telescope find_files',
            key = 'f',
          },
        },
      },
    },
  },
  {
    'folke/trouble.nvim',
    opts = {},
    cmd = 'Trouble',
    keys = {
      {
        '<leader>tx',
        '<cmd>Trouble diagnostics toggle<cr>',
        desc = 'Diagnostics (Trouble)',
      },
    },
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      theme = 'catppuccin',
    },
  },
  {
    'David-Kunz/cmp-npm',
    dependencies = { 'nvim-lua/plenary.nvim' },
    ft = 'json',
    config = function()
      require('cmp-npm').setup {}
    end,
  },
  {
    'johmsalas/text-case.nvim',
    opts = {
      default_keymappings_enabled = true,
    },
  },
  { 'numToStr/Comment.nvim', opts = {} },
}
