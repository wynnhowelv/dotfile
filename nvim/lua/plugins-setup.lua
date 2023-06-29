local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  {
    "navarasu/onedark.nvim"
  },
  {
    "christoomey/vim-tmux-navigator",
  },
  {
    "folke/persistence.nvim",
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  {
    "nvim-treesitter/nvim-treesitter",
  },
  {
    "p00f/nvim-ts-rainbow" -- 配合treesitter，不同括号颜色区分
  },
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate" -- :MasonUpdate updates registry contents
  },
  {
    "williamboman/mason-lspconfig.nvim",
  },
  {
    "neovim/nvim-lspconfig",
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
  },
  {
    "lewis6991/gitsigns.nvim",
  },
  {
    "folke/which-key.nvim",
    -- event = "VeryLazy",
    -- init = function()
      -- vim.o.timeout = true
      -- vim.o.timeoutlen = 3000
    -- end,
  },
  {
    "windwp/nvim-autopairs" -- 自动补全括号
  },
  {
    "numToStr/Comment.nvim" -- gcc和gc注释
  },
  {
    "hrsh7th/cmp-path" -- 文件路径
  },
  {
    "hrsh7th/nvim-cmp"
  },
  {
    "hrsh7th/cmp-nvim-lsp"
  },
  {
    "L3MON4D3/LuaSnip" -- snippets引擎，不装这个自动补全会出问题
  },
  {
    "saadparwaiz1/cmp_luasnip"
  },
  {
    "rafamadriz/friendly-snippets"
  },
  {
    "akinsho/bufferline.nvim" -- buffer分割线
  },
  {
    "rafamadriz/friendly-snippets"
  },
  {
    'nvim-lualine/lualine.nvim',  -- 状态栏
    dependencies = { 'nvim-tree/nvim-web-devicons' }  -- 状态栏图标
  },
}

local opts = {
  {
  }
}
require("lazy").setup(plugins, opts)
