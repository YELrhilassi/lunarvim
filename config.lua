
-- General settings
lvim.log.level = "warn"
lvim.format_on_save.enabled = true
lvim.colorscheme = "tokyonight-night"

-- Basic UI
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 4
vim.opt.mouse = "a"
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.wrap = false
vim.opt.linebreak = true
vim.opt.fillchars = { eob = " " }
vim.opt.cursorline = true
vim.opt.showmode = false
vim.opt.showtabline = 2
vim.opt.guifont = "JetBrainsMono Nerd Font:h12"

-- Command-line
vim.opt.cmdheight = 0 -- Reduced for popup preference
vim.opt.timeoutlen = 300
vim.opt.updatetime = 300

-- Tabs & indentation
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.smartindent = true

-- Completion
vim.opt.completeopt = { "menuone", "noselect" }

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Files
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.fileencoding = "utf-8"

-- Scroll
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- Popup menu
vim.opt.pumheight = 10

-- Conceal
vim.opt.conceallevel = 0

-- Split behavior
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Keymap options
local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Custom keymaps
keymap("n", "<C-s>", "<cmd>w<cr>", { desc = "Save file" })
keymap("i", "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file and exit insert mode" })
keymap("n", "<C-q>", "<cmd>q<cr>", opts)
keymap("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })
keymap("n", "<leader>Q", "<cmd>q!<cr>", { desc = "Force quit" })

-- Clear search highlight
keymap("n", "<Esc><Esc>", ":nohlsearch<CR>", opts)
keymap("n", "<leader>h", "<cmd>nohlsearch<cr>", { desc = "Clear search highlights" })

-- Window navigation
keymap("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Resize windows
keymap("n", "<C-Up>", "<cmd>resize -2<CR>", { desc = "Increase window height" })
keymap("n", "<C-Down>", "<cmd>resize +2<CR>", { desc = "Decrease window height" })
keymap("n", "<C-Left>", "<cmd>vertical resize -2<CR>", { desc = "Decrease window width" })
keymap("n", "<C-Right>", "<cmd>vertical resize +2<CR>", { desc = "Increase window width" })

-- Buffer navigation
keymap("n", "<Tab>", ":bnext<CR>", opts)
keymap("n", "<S-Tab>", ":bprevious<CR>", opts)
keymap("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
keymap("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Previous buffer" })
keymap("n", "<leader>x", "<cmd>BufferKill<CR>", { desc = "Close buffer" })
keymap("n", "<leader>b", ":enew<CR>", opts)

-- File explorer
keymap("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", opts)

-- Select all
keymap("n", "<C-a>", "ggVG", { desc = "Select all" })

-- Visual paste without yank
keymap("v", "p", '"_dP', { desc = "Paste without yanking" })

-- Delete without yank
keymap("n", "x", '"_x', opts)

-- Indent in visual mode
keymap("v", "<", "<gv", { desc = "Indent left" })
keymap("v", ">", ">gv", { desc = "Indent right" })

-- Move lines
keymap("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
keymap("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Enhanced Telescope keymaps
keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Live grep (global)" })
keymap("n", "<leader>fw", "<cmd>Telescope grep_string<CR>", { desc = "Grep word under cursor" })
keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "List buffers" })
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Help tags" })
keymap("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", { desc = "Recent files" })
keymap("n", "<leader>fc", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "Search in current buffer" })
keymap("n", "<leader>fs", "<cmd>Telescope lsp_document_symbols<CR>", { desc = "Document symbols" })
keymap("n", "<leader>fS", "<cmd>Telescope lsp_workspace_symbols<CR>", { desc = "Workspace symbols" })

-- Scrolling keeps cursor centered
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

-- Find next/prev keeps match centered
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- Zen Mode
keymap("n", "<leader>z", "<cmd>ZenMode<CR>", { desc = "Toggle Zen Mode" })

-- Dashboard settings
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"

-- Terminal settings
lvim.builtin.terminal.active = true
lvim.builtin.terminal.direction = "float"
lvim.builtin.terminal.float_opts = {
  border = "curved",
  width = 120,
  height = 30,
}

-- File explorer (nvim-tree)
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.view.width = 35
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true
lvim.builtin.nvimtree.setup.renderer.icons.show.folder_arrow = true
lvim.builtin.nvimtree.setup.filters.dotfiles = false
lvim.builtin.nvimtree.setup.git.enable = true
lvim.builtin.nvimtree.setup.git.ignore = false
lvim.builtin.nvimtree.setup.update_focused_file.enable = true
lvim.builtin.nvimtree.setup.update_focused_file.update_root = true

-- Treesitter
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "cpp",
  "css",
  "go",
  "html",
  "javascript",
  "json",
  "lua",
  "python",
  "rust",
  "typescript",
  "tsx",
  "yaml",
  "markdown",
  "markdown_inline",
  "vim",
  "vimdoc",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true

-- LSP settings
lvim.lsp.installer.setup.automatic_installation = false
lvim.lsp.installer.setup.ensure_installed = {
  "lua_ls",
  "pyright",
  "tsserver",
  "rust_analyzer",
  "clangd",
  "cssls",
  "html",
  "jsonls",
  "yamlls",
  "marksman",
}

-- Python LSP configuration
local function get_python_path()
  -- Check for virtual environment
  if vim.env.VIRTUAL_ENV then
    return vim.env.VIRTUAL_ENV .. "/bin/python"
  end
  
  -- Check for conda environment
  if vim.env.CONDA_DEFAULT_ENV then
    return vim.env.CONDA_PREFIX .. "/bin/python"
  end
  
  -- Check for poetry environment
  local poetry_venv = vim.fn.system("poetry env info --path 2>/dev/null"):gsub("\n", "")
  if poetry_venv and poetry_venv ~= "" and vim.fn.isdirectory(poetry_venv) == 1 then
    return poetry_venv .. "/bin/python"
  end
  
  -- Check for pipenv environment
  local pipenv_venv = vim.fn.system("pipenv --venv 2>/dev/null"):gsub("\n", "")
  if pipenv_venv and pipenv_venv ~= "" and vim.fn.isdirectory(pipenv_venv) == 1 then
    return pipenv_venv .. "/bin/python"
  end
  
  -- Fallback to system python
  return vim.fn.exepath("python3") or vim.fn.exepath("python") or "python"
end

-- Configure Pyright with proper Python path
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    local python_path = get_python_path()
    
    -- Update Pyright settings
    vim.lsp.for_each_buffer_client(vim.api.nvim_get_current_buf(), function(client)
      if client.name == "pyright" then
        client.config.settings = vim.tbl_deep_extend("force", client.config.settings or {}, {
          python = {
            pythonPath = python_path,
            analysis = {
              extraPaths = { vim.fn.getcwd() },
              autoSearchPaths = true,
              useLibraryCodeForTypes = true,
              autoImportCompletions = true,
            },
          },
        })
        client.notify("workspace/didChangeConfiguration", { settings = client.config.settings })
      end
    end)
  end,
})

-- Pyright LSP configuration
local pyright_opts = {
  settings = {
    python = {
      analysis = {
        extraPaths = { vim.fn.getcwd() },
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        autoImportCompletions = true,
        diagnosticMode = "workspace",
        typeCheckingMode = "basic",
      },
    },
  },
  on_init = function(client)
    client.config.settings.python.pythonPath = get_python_path()
  end,
}

-- Apply Pyright configuration
require("lvim.lsp.manager").setup("pyright", pyright_opts)

-- Ensure LSP servers are properly configured
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    local bufnr = ev.buf
    
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"
    
    -- Buffer local mappings
    local opts = { buffer = bufnr, silent = true }
    
    -- Override default LSP keymaps
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
    vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set("n", "<leader>wl", function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    
    -- Disable LSP formatting for Python (we'll use black instead)
    if client.name == "pyright" then
      client.server_capabilities.documentFormattingProvider = false
      client.server_capabilities.documentRangeFormattingProvider = false
    end
  end,
})

-- Configure LSP handlers
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = "rounded",
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
  border = "rounded",
})

-- Enhanced Telescope configuration
lvim.builtin.telescope.defaults.file_ignore_patterns = {
  ".git/",
  "target/",
  "docs/",
  "vendor/*",
  "%.lock",
  "__pycache__/*",
  "%.sqlite3",
  "%.ipynb",
  "node_modules/*",
  "%.jpg",
  "%.jpeg",
  "%.png",
  "%.svg",
  "%.otf",
  "%.ttf",
  "%.webp",
  ".dart_tool/",
  ".github/",
  ".gradle/",
  ".idea/",
  ".settings/",
  ".vscode/",
  "build/",
  "env/",
  "gradle/",
  "%.pdb",
  "%.dll",
  "%.class",
  "%.exe",
  "%.cache",
  "%.ico",
  "%.pdf",
  "%.dylib",
  "%.jar",
  "%.docx",
  "%.met",
}

-- Enhanced Telescope layout and behavior
lvim.builtin.telescope.defaults.layout_strategy = "horizontal"
lvim.builtin.telescope.defaults.layout_config = {
  horizontal = {
    prompt_position = "top",
    preview_width = 0.55,
    results_width = 0.8,
  },
  vertical = {
    mirror = false,
  },
  width = 0.87,
  height = 0.80,
  preview_cutoff = 120,
}

-- Better sorting and searching
lvim.builtin.telescope.defaults.sorting_strategy = "ascending"
lvim.builtin.telescope.defaults.prompt_prefix = "  "
lvim.builtin.telescope.defaults.selection_caret = "  "
lvim.builtin.telescope.defaults.entry_prefix = "  "
lvim.builtin.telescope.defaults.initial_mode = "insert"
lvim.builtin.telescope.defaults.selection_strategy = "reset"
lvim.builtin.telescope.defaults.path_display = { "truncate" }
lvim.builtin.telescope.defaults.winblend = 0
lvim.builtin.telescope.defaults.border = true
lvim.builtin.telescope.defaults.borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" }
lvim.builtin.telescope.defaults.color_devicons = true
lvim.builtin.telescope.defaults.use_less = true
lvim.builtin.telescope.defaults.set_env = { ["COLORTERM"] = "truecolor" }

-- Specific picker configurations
lvim.builtin.telescope.pickers = {
  find_files = {
    theme = "dropdown",
    previewer = false,
    hidden = true,
    find_command = { "rg", "--files", "--hidden", "--glob", "!.git/*" },
  },
  live_grep = {
    theme = "ivy",
    additional_args = function(opts)
      return { "--hidden", "--glob", "!.git/*" }
    end,
  },
  grep_string = {
    theme = "ivy",
    additional_args = function(opts)
      return { "--hidden", "--glob", "!.git/*" }
    end,
  },
  current_buffer_fuzzy_find = {
    theme = "dropdown",
    previewer = false,
  },
  buffers = {
    theme = "dropdown",
    previewer = false,
    initial_mode = "normal",
    mappings = {
      i = {
        ["<C-d>"] = require("telescope.actions").delete_buffer,
      },
      n = {
        ["dd"] = require("telescope.actions").delete_buffer,
      },
    },
  },
}

-- Which-key mappings
lvim.builtin.which_key.mappings["t"] = {
  name = "+Terminal",
  f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
  h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal" },
  v = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical" },
}

-- Enhanced search mappings
lvim.builtin.which_key.mappings["s"] = {
  name = "+Search",
  f = { "<cmd>Telescope find_files<cr>", "Find files" },
  g = { "<cmd>Telescope live_grep<cr>", "Live grep" },
  w = { "<cmd>Telescope grep_string<cr>", "Grep word" },
  b = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", "Search in buffer" },
  h = { "<cmd>Telescope help_tags<cr>", "Help tags" },
  r = { "<cmd>Telescope oldfiles<cr>", "Recent files" },
  s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document symbols" },
  S = { "<cmd>Telescope lsp_workspace_symbols<cr>", "Workspace symbols" },
}

-- Additional plugins
lvim.plugins = {
  -- Color schemes
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "night",
        transparent = false,
        terminal_colors = true,
        styles = {
          comments = { italic = true },
          keywords = { italic = true },
          functions = {},
          variables = {},
          sidebars = "dark",
          floats = "dark",
        },
      })
    end,
  },

  -- Ripgrep for better search
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    config = function()
      require("telescope").load_extension("fzf")
    end,
  },

  -- Enhanced grep functionality
  {
    "nvim-telescope/telescope-live-grep-args.nvim",
    config = function()
      require("telescope").load_extension("live_grep_args")
      vim.keymap.set("n", "<leader>fG", "<cmd>Telescope live_grep_args<cr>", { desc = "Live grep with args" })
    end,
  },

  -- Better command line
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
      routes = {
        {
          filter = {
            event = "msg_show",
            any = {
              { find = "%d+L, %d+B" },
              { find = "; after #%d+" },
              { find = "; before #%d+" },
            },
          },
          view = "mini",
        },
      },
      presets = {
        bottom_search = false,
        command_palette = true,
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = false,
      },
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },

  -- Surround
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup()
    end,
  },

  -- Indent guides
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufRead",
    config = function()
      local ok, ibl = pcall(require, "ibl")
      if ok then
        -- Version 3.x configuration
        ibl.setup({
          indent = {
            char = "│",
            tab_char = "│",
          },
          scope = { enabled = false },
          exclude = {
            filetypes = {
              "help",
              "alpha",
              "dashboard",
              "neo-tree",
              "Trouble",
              "trouble",
              "lazy",
              "mason",
              "notify",
              "toggleterm",
              "lazyterm",
            },
          },
        })
      else
        -- Fallback to version 2.x configuration
        local ok_v2, indent_blankline = pcall(require, "indent_blankline")
        if ok_v2 then
          indent_blankline.setup({
            char = "│",
            filetype_exclude = {
              "help",
              "alpha",
              "dashboard",
              "neo-tree",
              "Trouble",
              "trouble",
              "lazy",
              "mason",
              "notify",
              "toggleterm",
              "lazyterm",
            },
          })
        end
      end
    end,
  },

  -- Color highlighter
  {
    "norcalli/nvim-colorizer.lua",
    event = "BufRead",
    config = function()
      require("colorizer").setup()
    end,
  },

  -- Better quickfix
  {
    "kevinhwang91/nvim-bqf",
    event = { "BufRead", "BufNew" },
    config = function()
      require("bqf").setup()
    end,
  },

  -- Trouble
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
    config = function()
      require("trouble").setup()
    end,
  },

  -- Todo comments
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },

  -- Markdown preview
  {
    "iamcco/markdown-preview.nvim",
    build = function() vim.fn["mkdp#util#install"]() end,
    ft = "markdown",
  },

  -- Hop (better navigation)
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("hop").setup()
      vim.keymap.set("n", "s", "<cmd>HopChar2<cr>", { desc = "Hop to character" })
      vim.keymap.set("n", "S", "<cmd>HopWord<cr>", { desc = "Hop to word" })
    end,
  },

  -- Zen mode
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    config = function()
      require("zen-mode").setup()
    end,
  },

  -- Notify
  {
    "rcarriga/nvim-notify",
    config = function()
      require("notify").setup({
        stages = "fade",
        timeout = 3000,
        background_colour = "#000000",
      })
      vim.notify = require("notify")
    end,
  },
  {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup()
    end
  },
}

-- Alternative formatter/linter setup using conform and nvim-lint
-- This avoids the null-ls/none-ls issues
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("LspAttach", { clear = true }),
  callback = function(event)
    local client = vim.lsp.get_client_by_id(event.data.client_id)
    if client and client.name == "null-ls" then
      -- Disable null-ls if it's causing issues
      client.stop()
    end
  end,
})

-- Disable format on save temporarily to avoid LSP format errors
lvim.format_on_save.enabled = false

local function format_python_file()

  local filepath = vim.fn.expand("%:p")

  if vim.fn.executable("black") == 1 then
    local black_check = vim.fn.system("black --check --diff " .. vim.fn.shellescape(filepath))
    if vim.v.shell_error == 1 then
      vim.fn.system("black --quiet " .. vim.fn.shellescape(filepath))
      vim.cmd("edit!")
    end
    else
    vim.notify("No Python formatter found. Install black or autopep8", vim.log.levels.WARN)
  end
end
-- Custom format function that works without LSP
local function format_current_buffer()
  local filetype = vim.bo.filetype
  
  if filetype == "python" then
    format_python_file()
  elseif filetype == "lua" then
    if vim.fn.executable("stylua") == 1 then
      local filepath = vim.fn.expand("%:p")
      vim.fn.system("stylua " .. vim.fn.shellescape(filepath))
      vim.cmd("edit!")
      vim.notify("Formatted with stylua", vim.log.levels.INFO)
    else
      vim.notify("stylua not found", vim.log.levels.WARN)
    end
  else
    -- Try LSP formatting for other filetypes
    vim.lsp.buf.format({ async = true })
  end
end

-- Override the format keymap to use our custom function
vim.keymap.set("n", "<leader>lf", format_current_buffer, { desc = "Format file" })
vim.keymap.set("n", "<leader>F", format_current_buffer, { desc = "Format file" })

-- Auto-format Python files on save (optional)
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.py",
  callback = function()
    -- Only format if user wants auto-formatting
    if vim.g.auto_format_python then
      format_python_file()
    end
  end,
})

-- Enable auto-formatting for Python (set to false if you don't want this)
vim.g.auto_format_python = true

-- Additional configuration after plugins load
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- Ensure ripgrep is available
    if vim.fn.executable("rg") == 0 then
      vim.notify("ripgrep not found. Install it for better search performance.", vim.log.levels.WARN)
    end
  end,
})

-- Python environment detection and notification
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    local python_path = get_python_path()
    local venv_name = "system"
    
    if vim.env.VIRTUAL_ENV then
      venv_name = vim.fn.fnamemodify(vim.env.VIRTUAL_ENV, ":t")
    elseif vim.env.CONDA_DEFAULT_ENV then
      venv_name = vim.env.CONDA_DEFAULT_ENV
    end
    
    -- Show current Python environment in statusline (optional)
    vim.b.python_venv = venv_name
    
    -- Debug: Print Python path (remove this line after confirming it works)
    print("Python path: " .. python_path .. " (env: " .. venv_name .. ")")
  end,
})

-- Create pyrightconfig.json automatically if it doesn't exist
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local pyrightconfig = vim.fn.getcwd() .. "/pyrightconfig.json"
    if vim.fn.filereadable(pyrightconfig) == 0 then
      local config = {
        include = { "." },
        exclude = {
          "**/node_modules",
          "**/__pycache__",
          ".git",
          ".venv",
          "venv",
          "env",
        },
        reportMissingImports = true,
        reportMissingTypeStubs = false,
        pythonVersion = "3.8",
        typeCheckingMode = "basic",
      }
      
      -- Only create if we're in a Python project
      if vim.fn.glob("*.py") ~= "" or vim.fn.filereadable("requirements.txt") == 1 or vim.fn.filereadable("pyproject.toml") == 1 then
        local file = io.open(pyrightconfig, "w")
        if file then
          file:write(vim.fn.json_encode(config))
          file:close()
        end
      end
    end
  end,
})

-- Python keymaps
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    local buf_keymap = vim.keymap.set
    
    -- Quick Python-specific commands
    buf_keymap("n", "<leader>pr", "<cmd>!python %<CR>", { desc = "Run Python file", buffer = true })
    buf_keymap("n", "<leader>pi", "<cmd>!python -i %<CR>", { desc = "Run Python interactive", buffer = true })
    buf_keymap("n", "<leader>pt", "<cmd>!python -m pytest<CR>", { desc = "Run pytest", buffer = true })
    buf_keymap("n", "<leader>pp", "<cmd>!pip install -r requirements.txt<CR>", { desc = "Install requirements", buffer = true })
    
    -- Virtual environment activation reminder
    if not vim.env.VIRTUAL_ENV and not vim.env.CONDA_DEFAULT_ENV then
      vim.notify("No virtual environment detected. Consider activating one for better import resolution.", vim.log.levels.WARN)
    end
  end,
})

-- Disable built-in null-ls if it's causing issues
vim.api.nvim_create_autocmd("User", {
  pattern = "LspAttach",
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client and client.name == "null-ls" then
      -- Optionally disable null-ls
      -- client.stop()
    end
  end,
})
