return {
  theme = {
    -- name = "rose-pine",
    -- rose_pine = { variant = "dawn" },
    name = "catppuccin",
    catppuccin_flavour = "frappe"
    -- catppuccin_flavour = "latte"
    -- name = "nightfox",
  },
  flags = {
    format_on_save = true,
    disable_tabs = true,
  },
  unload_plugins = {
    "snippets"
  },
  nvim_tree = {
    filters = {
      dotfiles = true,
    }
  },
  hooks = {
    after_setup = function()
      vim.opt.relativenumber = true
      vim.opt.number = true
      vim.opt.so = 999

      require("cmp").setup {
        -- other setup
        ghost_text = true,
        sources = {
          { name = "copilot" },
          { name = "nvim_lsp" },
          { name = "luasnip" },
          -- other sources
        },
        formatting = {
          format = require("nvim-highlight-colors").format
        }
      }

      require('nvim-highlight-colors').setup({})
      vim.opt.termguicolors = true
      require('telescope').load_extension('lazygit')

      -- vim.cmd("colorscheme dayfox")
      vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = false })
      vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = false })
    end,
  },
  mappings = {
    leader = " ",
    tabs = nil,
    next_item = "<C-j>",
    prev_item = "<C-k>",
    show_list = "<C-Space>",
    -- FIXME: those remaps dont work
    -- custom = {
    --   by_mode = {
    --     i = {
    --       ["jj"] = { "<Esc>", "exit insert mode" },
    --       ["jk"] = { "<Esc>", "exit insert mode" },
    --     }
    --   }
    -- }
  },
  treesitter = "all",
  plugins = {
    {
      "kdheepak/lazygit.nvim",
      lazy = false,
      cmd = {
        "LazyGit",
        "LazyGitConfig",
        "LazyGitCurrentFile",
        "LazyGitFilter",
        "LazyGitFilterCurrentFile",
      },
      dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim"
      },
      config = function()
        require("telescope").load_extension("lazygit")
      end,
      keys = {
        { "<leader>lgit", "<cmd>LazyGit<cr>", desc = "LazyGit" }
      }
    },
    {
      "f-person/git-blame.nvim",
      event = "VeryLazy",
      opts = {
        enabled = true
      }
    },
    {
      'brenoprata10/nvim-highlight-colors',
      event = "VeryLazy"
    },
    -- {
    --   'Exafunction/codeium.vim',
    --   event = 'BufEnter'
    -- }
    {
      "zbirenbaum/copilot-cmp",
      event = "InsertEnter",
      config = function() require("copilot_cmp").setup() end,
      dependencies = {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        config = function()
          require("copilot").setup({
            suggestion = { enabled = false },
            panel = { enabled = false },
          })
        end,
      },
    },
  }
}
