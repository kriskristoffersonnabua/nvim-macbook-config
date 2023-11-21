return require('packer').startup(function()

  -- packer can manage itself
  use 'wbthomason/packer.nvim'

  -- colorscheme plugins
  use "EdenEast/nightfox.nvim"
  use "ellisonleao/gruvbox.nvim"
  use "jacoborus/tender.vim"
  use "tomasr/molokai"
  use "fmoralesc/molokayo"
  use 'patstockwell/vim-monokai-tasty'
  use 'morhetz/gruvbox'
  use 'srcery-colors/srcery-vim'
  use 'jsit/toast.vim'
  use 'folke/tokyonight.nvim'
  use 'bluz71/vim-nightfly-colors'

  -- file explorer plugins
  use "kyazdani42/nvim-web-devicons"
  -- use "kyazdani42/nvim-tree.lua"

  -- tpope plugins
  use 'tpope/vim-vinegar'
  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'
  use 'tpope/vim-fugitive'

  -- fuzzy search plugins
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'

  -- nvim-cmp plugins
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'saadparwaiz1/cmp_luasnip'
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'hrsh7th/cmp-nvim-lua'
  -- use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  -- use 'L3MON4D3/LuaSnip'
  -- use "rafamadriz/friendly-snippets"
  use 'nvim-treesitter/nvim-treesitter'
  

  -- lsp plugins
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use "williamboman/nvim-lsp-installer"

  --snippets
  use 'L3MON4D3/LuaSnip'
  use "rafamadriz/friendly-snippets"

  -- gui plugins
  use 'nvim-lualine/lualine.nvim'
  -- use 'akinsho/bufferline.nvim'
    -- gui plugin for lss completion
  use 'onsails/lspkind.nvim'
  -- use 'nvim-neo-tree/neo-tree.nvim'

  -- productivity plugins
  use 'windwp/nvim-autopairs'
  use 'p00f/nvim-ts-rainbow'
  use 'lewis6991/gitsigns.nvim'
  use 'windwp/nvim-ts-autotag'

  -- formatter
  -- use 'jose-elias-alvarez/null-ls.nvim'
  use({
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require("null-ls").setup()
    end,
    requires = { "nvim-lua/plenary.nvim" },
  })
  use 'MunifTanjim/prettier.nvim'

  -- terminal plugin
  use 'akinsho/toggleterm.nvim'

  -- debugging tools
  use 'mfussenegger/nvim-dap'
end)
