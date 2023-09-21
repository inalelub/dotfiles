local fn = vim.fn

-- Automatically install packer.nvim
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  print "Installing packer! Close & reopen NeoVim..."
  vim.cmd [[packadd packer.nvim]]
  return true
end

-- Autocommand that reloads NeoVim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer.nvim use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float{border = "rounded"}
        end,
    },
}

-- Install your plugins here
return packer.startup(function(use)
    -- Essential
    use "wbthomason/packer.nvim" -- Have packer manage itself
    use "nvim-lua/plenary.nvim" -- Useful lua functions used by lots of plugins

    -- UI Related
    -- use "projekt0n/github-nvim-theme" -- GitHub colorschemes
    use "olimorris/onedarkpro.nvim" -- OneDarkPro colorschemes
    use 'nvim-tree/nvim-web-devicons' -- Icons 
    use "nvim-lua/popup.nvim" -- An implementation of the Popup API from Vim in NeoVim
    use 'nvim-lualine/lualine.nvim' -- Statusline plugin for NeoVim
    use 'glepnir/dashboard-nvim' -- Dashboard startup screen
    use 'nvim-tree/nvim-tree.lua' -- A File Explorer for NeoVim 
    use {'akinsho/bufferline.nvim', tag = "v3.*"} -- A snazzy bufferline for NeoVim
    use 'moll/vim-bbye' -- This is Bdelete! to delete a buffer

    -- Snippets
    use "L3MON4D3/LuaSnip" -- Snippet engine
    use "rafamadriz/friendly-snippets" -- Set of preconfigure snippets
    use "saadparwaiz1/cmp_luasnip" -- LuaSnip completion source

    -- Completions
    use 'hrsh7th/nvim-cmp' -- Completion plugin for NeoVim
    use 'hrsh7th/cmp-buffer' -- Completion for buffers
    use 'hrsh7th/cmp-path' -- Completion for paths
    use 'hrsh7th/cmp-cmdline' -- Completion for command line 
    use 'hrsh7th/cmp-nvim-lsp' -- Completion for NeoVim LSP
    use 'hrsh7th/cmp-nvim-lua' -- Completion for Lua API

    -- Language Server Protocols
    use 'neovim/nvim-lspconfig' -- Native LSP for NeoVim
    use "williamboman/mason.nvim" -- Package manager which easily installs & manages LSPs, DAPs, linters & formatters
    use "williamboman/mason-lspconfig.nvim" -- Extension to mason. Makes it easier to use LSP config
    use "jose-elias-alvarez/null-ls.nvim" -- Use NeoVim as a language server to inject LSP diagnostics, code actions & more. This is basically formatters, linters, etc like black for python, prettier to js, etc but these binaries should be installed in your machine

    -- Treesitter
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'} -- Syntax highlighting
    use 'nvim-treesitter/nvim-treesitter-context' -- Sticky scrolling using treesitter
    use 'p00f/nvim-ts-rainbow' -- Rainbow Parenthesis for NeoVim

    -- Auto-Pairs
    use "windwp/nvim-autopairs" -- Auto-Pairs for NeoVim
    use "windwp/nvim-ts-autotag" -- Use Treesitter to auto close & auto rename html tags

    -- Telescope
    use 'nvim-telescope/telescope.nvim' -- Find, Filter, Preview, Pick

    -- Commenting
    use 'numToStr/Comment.nvim' -- Commenting plugin
    use 'JoosepAlviste/nvim-ts-context-commentstring' -- NeoVim Treesitter plugin for setting commentstring based on cursor location in the file

    -- Git
    use 'lewis6991/gitsigns.nvim' -- Git integration for buffers

    -- Markdown Preview
    use { "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, }

    -- Code Actions Notifier
    use {'kosayoda/nvim-lightbulb', requires = 'antoinemadec/FixCursorHold.nvim'}

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
    require('packer').sync()
    end
end)
