local config = {

  -- Configure AstroNvim updates
  updater = {
    remote = "osamuaoki", -- remote to use
    channel = "nightly", -- "stable" or "nightly"
    version = "latest", -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
    branch = "ux", -- branch name (NIGHTLY ONLY)
    commit = nil, -- commit hash (NIGHTLY ONLY)
    pin_plugins = nil, -- nil, true, false (nil will pin plugins on stable only)
    skip_prompts = false, -- skip prompts about breaking changes
    show_changelog = true, -- show the changelog after performing an update
    remotes = { -- easily add new remotes to track
      ["osamuaoki"] = "osamuaoki/AstroNvim",
    },
  },

  -- Set colorscheme
  colorscheme = "default_theme",

  -- Override highlight groups in any theme
  highlights = {
    -- duskfox = { -- a table of overrides
    --   Normal = { bg = "#000000" },
    -- },
    default_theme = function(highlights) -- or a function that returns one
      local C = require "default_theme.colors"

      highlights.Normal = { fg = C.fg, bg = C.bg }
      return highlights
    end,
  },

  -- set vim options here (vim.<first_key>.<second_key> =  value)
  options = {
    opt = {
      relativenumber = false, -- unsets vim.opt.relativenumber
      number = false,         -- unsets vim.opt.number
      spell = true,           -- sets   vim.opt.spell
      signcolumn = "no",      -- unsets vim.opt.signcolumn
    },
    g = {
      mapleader = " ", -- sets vim.g.mapleader
      cmp_enabled = false, -- enable toggle_completion
      -- no way to disable autopairs at start
    },
  },

  -- Set dashboard header
  -- Logo created from Cantarell Extra Bold (LO, gIMP)
  -- ASCII art by https://lachlanarthur.github.io/Braille-ASCII-Art/
  header = {
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⠀⠀⠀⣀⣀⡀⠀⠀⠀⢰⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⠃⠀⠀⠀⠀⠀⣰⣶⡶⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣧⠀⠀⢹⣿⡇⠀⠀⠀⠀⢻⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⡟⠀⢀⣀⣀⣀⣠⣿⣿⣃⣀⣀⡀⠀⣀⠀⠀⢀⣀⡀⠀⢸⣿⣿⣿⣧⠀⠸⣿⣿⣀⡀⠀⠀⣀⣉⣁⣀⢀⣀⡀⠀⣀⡀⠀⠀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⠏⣼⣿⣿⣵⣾⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣷⣿⣿⣧⣾⣿⣿⣿⣷⣸⣿⣿⢿⣿⣧⠀⣿⣧⢻⣷⡀⠀⣿⣿⣿⣿⡌⢿⣿⣾⣿⣿⣷⣼⣿⣿⣷⣤⡀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⣠⣾⣿⠟⠁⣼⣿⣿⣿⣿⣟⣉⠉⠛⣿⣿⡿⠛⢻⣿⣿⡿⠿⣿⣿⣿⠟⠛⣿⣿⣿⣿⣿⠈⢿⣿⣷⣸⣿⣿⣿⣷⡀⢿⣿⡿⣿⣿⡌⢿⣿⣿⠛⢿⣿⣿⡟⠻⣿⣿⣦⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣰⣿⣿⠃⠀⣾⣿⡿⠀⢀⣿⣿⣿⠀⠀⣿⣿⣿⣿⣿⡄⠈⢻⣿⣿⣿⣿⣿⣿⣷⣸⣿⣧⢻⣿⣿⡌⣿⣿⣧⠀⠹⣿⣿⣆⠈⢻⣿⣷⡄⠀⠀⠀",
    "⠀⠀⢀⣴⣿⡿⠿⠿⠿⢿⣿⣿⢿⣃⣈⣩⣿⣿⣿⣿⣿⣏⣀⣸⣿⣿⡇⠀⠸⣿⣿⣿⣄⣤⣿⣿⣿⣿⣿⡇⠀⠀⠻⣿⣿⣿⣷⠹⣿⣿⣿⣿⠀⢿⣿⣿⡘⣿⣿⣧⡀⠙⣿⣿⣦⠀⠙⣿⣿⣆⠀⠀",
    "⢀⣴⣿⣿⠏⠀⠀⠀⠀⣾⣿⠁⣸⣿⣿⣿⡿⠟⠸⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠻⣿⣿⣿⣿⣿⠟⢹⣿⣿⡇⠀⠀⠀⠹⣿⣿⣿⡆⠹⣿⣿⣿⠀⠘⣿⣿⣷⡘⣿⣿⣷⡀⠘⢿⣿⣷⡀⠈⢿⣿⣷⡄",
    -- "⠀⠀⠀⠀⠀⣰⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣤⣤⡄⠀⠀⢠⣤⡤⠀⠀⠀⠀⠀⠀⠀⠀⣰⣾⡷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    -- "⠀⠀⠀⢀⣼⡿⣿⣿⡆⠀⠀⠀⢀⣀⣀⡀⠀⣀⣿⣿⣁⡀⢀⣀⡀⢀⣀⠀⠀⠀⣀⣀⡀⠀⠀⠀⣼⣿⣿⣷⠀⠀⣸⣿⡇⣀⣀⡀⠀⠀⣀⣀⠀⣙⣋⠁⢀⣀⠀⢀⣀⡀⠀⢀⣀⡀",
    -- "⠀⠀⢠⣾⡿⠁⣿⣿⡇⠀⢠⣾⡿⠿⠿⠏⠸⣿⣿⡿⠿⠀⣼⣿⣷⣿⡿⢀⣴⣿⠿⢿⣿⣷⠀⢰⣿⡟⢻⣿⣇⢠⣿⣿⠀⣿⣿⡇⢀⣼⣿⠋⢸⣿⡏⠀⣼⣿⡿⢿⣿⣿⡾⢿⣿⣿",
    -- "⠀⢠⣿⣿⣷⣶⣿⣿⡇⠀⠸⢿⣿⣷⣶⡄⢀⣿⣿⠁⠀⢠⣿⣿⠁⠀⠀⣾⣿⡇⠀⢸⣿⡟⠀⣾⣿⠃⠈⣿⣿⣾⣿⠇⠀⢸⣿⣇⣾⡿⠁⠀⣿⣿⠃⢠⣿⣿⠀⢠⣿⣿⠀⢠⣿⣿",
    -- "⣰⣿⡿⠉⠉⠉⢹⣿⣿⢠⣶⣶⣶⣿⠟⠀⠸⣿⣿⣶⠀⣼⣿⡇⠀⠀⠀⢿⣿⣷⣶⣿⠟⠁⢰⣿⡟⠀⠀⠸⣿⣿⡿⠀⠀⠸⣿⣿⡟⠀⠀⣸⣿⡟⠀⣾⣿⡇⠀⣾⣿⡇⠀⣼⣿⡇",
  },

  -- Default theme configuration
  default_theme = {
    diagnostics_style = { italic = true },
    -- Modify the color table
    colors = {
      fg = "#abb2bf", -- original
      -- fg = "#ffffff",
      bg = "#000000",
    },
    plugins = { -- enable or disable extra plugin highlighting
      aerial = true,
      beacon = false,
      bufferline = true,
      dashboard = true,
      highlighturl = true,
      hop = false,
      indent_blankline = true,
      lightspeed = false,
      ["neo-tree"] = true,
      notify = true,
      ["nvim-tree"] = false,
      ["nvim-web-devicons"] = true,
      rainbow = true,
      symbols_outline = false,
      telescope = true,
      vimwiki = false,
      ["which-key"] = true,
    },
  },

  -- Disable AstroNvim ui features
  ui = {
    nui_input = true,
    telescope_select = true,
  },

  -- Configure plugins
  plugins = {
    -- Add plugins, the packer syntax without the "use"
    init = {
      { "Pocco81/AutoSave.nvim" },

      -- You can disable default plugins as follows:
      -- ["goolord/alpha-nvim"] = { disable = true },

      -- You can also add new plugins here as well:
      -- { "andweeb/presence.nvim" },
      -- {
      --   "ray-x/lsp_signature.nvim",
      --   event = "BufRead",
      --   config = function()
      --     require("lsp_signature").setup()
      --   end,
      -- },
    },
    -- All other entries override the setup() call for default plugins
    ["null-ls"] = function(config)
      local null_ls = require "null-ls"
      -- Check supported formatters and linters
      -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
      -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
      config.sources = {
        -- Set a formatter
        null_ls.builtins.formatting.rufo,
        -- Set a linter
        null_ls.builtins.diagnostics.rubocop,
      }
      -- set up null-ls's on_attach function
      config.on_attach = function(client)
        -- NOTE: You can remove this on attach function to disable format on save
        if client.resolved_capabilities.document_formatting then
          vim.api.nvim_create_autocmd("BufWritePre", {
            desc = "Auto format before save",
            pattern = "<buffer>",
            callback = vim.lsp.buf.formatting_sync,
          })
        end
      end
      return config -- return final config table
    end,
    treesitter = {
      ensure_installed = { "lua" },
    },
    ["nvim-lsp-installer"] = {
      ensure_installed = { "sumneko_lua" },
    },
    packer = {
      compile_path = vim.fn.stdpath "data" .. "/packer_compiled.lua",
    },
  },

  -- LuaSnip Options
  luasnip = {
    -- Add paths for including more VS Code style snippets in luasnip
    vscode_snippet_paths = {},
    -- Extend filetypes
    filetype_extend = {
      javascript = { "javascriptreact" },
    },
  },

  -- CMP Source Priorities
  -- modify here the priorities of default cmp sources
  -- higher value == higher priority
  -- The value can also be set to a boolean for disabling default sources:
  -- false == disabled
  -- true == 1000
  cmp = {
    source_priority = {
      nvim_lsp = 1000,
      luasnip = 750,
      buffer = 500,
      path = 250,
    },
  },

  -- Extend LSP configuration
  lsp = {
    -- enable servers that you already have installed without lsp-installer
    servers = {
      -- "pyright"
    },
    -- easily add or disable built in mappings added during LSP attaching
    mappings = {
      n = {
        -- ["<leader>lf"] = false -- disable formatting keymap
      },
    },
    -- add to the server on_attach function
    -- on_attach = function(client, bufnr)
    -- end,

    -- override the lsp installer server-registration function
    -- server_registration = function(server, opts)
    --   require("lspconfig")[server].setup(opts)
    -- end,

    -- Add overrides for LSP server settings, the keys are the name of the server
    ["server-settings"] = {
      -- example for addings schemas to yamlls
      -- yamlls = {
      --   settings = {
      --     yaml = {
      --       schemas = {
      --         ["http://json.schemastore.org/github-workflow"] = ".github/workflows/*.{yml,yaml}",
      --         ["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
      --         ["http://json.schemastore.org/ansible-stable-2.9"] = "roles/tasks/*.{yml,yaml}",
      --       },
      --     },
      --   },
      -- },
    },
  },

  -- Diagnostics configuration (for vim.diagnostics.config({}))
  diagnostics = {
    virtual_text = true,
    underline = true,
  },

  -- Modify which-key registration
  ["which-key"] = {
    -- Add bindings which show up as group
    register_mappings = {
      -- first key is the mode, n == normal mode
      n = {
        -- second key is the prefix, <leader> prefixes
        ["<leader>"] = {
          ["b"] = { name = "Buffer" },
        },
      },
    },
  },

  mappings = {
    -- first key is the mode
    n = {
      -- second key is the lefthand side of the map
      -- Terminal
      -- Install ncdu package:w:w
      -- Disk siz w/o snapshot btrfs subvolumes and .git
      ["<leader>tu"] = { function() astronvim.toggle_term_cmd "ncdu -x --exclude .git" end, desc = "Term for NCDU w/o junks" },
      -- Install mc package
      ["<leader>tm"] = { function() astronvim.toggle_term_cmd "mc . ~" end, desc = "Term for MC" },
      -- Install libreply-perl + libterm-readline-gnu-perl packages
      ["<leader>tp"] = { function() astronvim.toggle_term_cmd "reply" end, desc = "Term for perl5 REPL" },
      -- BUffer
      ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
      ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
      ["<leader>bd"] = { "<cmd>BufferLineSortByDirectory<cr>", desc = "Sort by directory" },
      ["<leader>bD"] = { "<cmd>BufferLineSortByRelativeDirectory<cr>", desc = "Sort by rel. dir." },
      ["<leader>be"] = { "<cmd>BufferLineSortByExtension<cr>", desc = "Sort by extention" },
      ["<leader>bf"] = { "<cmd>Telescope buffers<cr>", desc = "Find" },
      ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
      ["<leader>bl"] = { "<cmd>BufferLineCloseLeft<cr>", desc = "Close left-side" },
      ["<leader>bn"] = { "<cmd>BufferLineCycleNext<cr>", desc = "Next" },
      ["<leader>bp"] = { "<cmd>BufferLineCyclePrev<cr>", desc = "Previous" },
      ["<leader>br"] = { "<cmd>BufferLineCloseRight<cr>", desc = "Close right-side" },
      ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
      -- quick save
      -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    },
    t = {
      -- setting a mapping to false will disable it
      -- ["<esc>"] = false,
    },
  },

  -- This function is run last
  -- good place to configuring augroups/autocommands and custom filetypes
  polish = function()
    -- local map = vim.api.nvim_set_keymap
    -- Set/Unset key binding
    --
    -- To regain the original (n)vim feature, unmap is a possibility 
    -- local unmap = vim.api.nvim_del_keymap
    -- unmap("n", "H")  -- bound to buffer navi. to left
    -- unmap("n", "L")  -- bound to buffer navi. to right
    -- Set autocommands
    vim.api.nvim_create_augroup("packer_conf", { clear = true })
    vim.api.nvim_create_autocmd("BufWritePost", {
      desc = "Sync packer after modifying plugins.lua",
      group = "packer_conf",
      pattern = "plugins.lua",
      command = "source <afile> | PackerSync",
    })

    -- Set up custom filetypes
    -- vim.filetype.add {
    --   extension = {
    --     foo = "fooscript",
    --   },
    --   filename = {
    --     ["Foofile"] = "fooscript",
    --   },
    --   pattern = {
    --     ["~/%.config/foo/.*"] = "fooscript",
    --   },
    -- }
  end,
}

return config
