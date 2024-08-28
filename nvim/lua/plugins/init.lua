return {
  {
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true
  },
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- Clojure
  { "Olical/conjure", lazy = false },
  { "guns/vim-sexp", lazy = false  },
  { "tpope/vim-sexp-mappings-for-regular-people", lazy = false  },
  { "tpope/vim-repeat", lazy = false  },
  { "tpope/vim-surround", lazy = false  },
  {
    'dense-analysis/ale',
    lazy = false,
    config = function()
      -- Configuration goes here.
      local g = vim.g

      g.ale_ruby_rubocop_auto_correct_all = 1

      g.ale_linters = {
        clojure = {'clj-kondo'},
        lua = {'lua_language_server'}
      }

      -- g.ale_fixters['*'] = { 'remove_trailing_lines', 'trim_whitespace' }
    end
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "clojure",
        "css",
        "fennel",
        "html",
        "go",
        "lua",
        "markdown",
        "python",
        "rust",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
      },
    },
  },
}
