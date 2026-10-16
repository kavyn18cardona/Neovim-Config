-- lazy.nvim bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)
 
-- plugins
require("lazy").setup({

  --lua functions that may plugins use
  { "nvim-lua/plenary.nvim"},

  --tmux & split window navigation
  { "christoomey/vim-tmux-navigator" },

  --maxamizes and restores current window
  { "szw/vim-maximizer" },

  --peferred colorscheme
  { "bluz71/vim-nightfly-guicolors", priority = 1000},

  --icons (optional, but many plugins use it)
  { "nvim-tree/nvim-web-devicons" },

  --fuzzy finder (popular)
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },

  --treesitter (syntax highlighting)
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  --lspconfig (Language Server Protocol)
  { "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" } },
  { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } }, 

  --essential plugins
  { "tpope/vim-surround" },
  { "vim-scripts/ReplaceWithRegister" },

  --commenting with gc
  { "numToStr/Comment.nvim" },

  --file explorer
  { "nvim-tree/nvim-tree.lua" },

  --statusline
  { "nvim-lualine/lualine.nvim" }, 

  --auto completion
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },

  --snippets
  { "L3MON4D3/LuaSnip" },
  { "saadparwaiz1/cmp_luasnip" },
  { "rafamadriz/friendly-snippets" },

  --managing & installing servers
  { 
    "williamboman/mason.nvim",
    cmd = { "Mason", "MasonInstall", "MasonUninstall", "MasonUpdate", "MasonLog" },
    build = ":MasonUpdate",
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
  },

  --configuring lsp servers
  { "neovim/nvim-lspconfig" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "glepnir/lspsaga.nvim", branch = "main" },
  --{ "jose-elias-alvarez/typescript.nvim" },
  { "onsails/lspkind.nvim" },

  --auto closing
  { "windwp/nvim-autopairs" },

  --git signs plugin
  --{ "lewis6991/gitsigne.nvim" },

})
