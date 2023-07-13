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
    'nvim-tree/nvim-tree.lua',
    {
        'nvim-treesitter/nvim-treesitter',
        build = ":TSUpdate"
    },
    'f-person/git-blame.nvim',
    'tpope/vim-fugitive',
    'rbong/vim-flog',
    'roobert/search-replace.nvim',
    'nvim-lualine/lualine.nvim',
    'lewis6991/gitsigns.nvim',
    'nvim-tree/nvim-web-devicons',
    'RRethy/vim-illuminate',
    'preservim/tagbar',
    'ryanoasis/vim-devicons',
    'nyoom-engineering/oxocarbon.nvim',
    'folke/todo-comments.nvim',
    -- AutoCompletion 
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
}

local opts = {}

require("lazy").setup(plugins, opts)
