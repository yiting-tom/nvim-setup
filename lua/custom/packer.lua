vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- fuzzy searching
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
    -- Fuzzy Finder (files, lsp, etc)
    use { 'nvim-telescope/telescope.nvim', branch = '0.1.x', requires = { 'nvim-lua/plenary.nvim' } }
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable 'make' == 1 }
    pcall(require('telescope').load_extension, 'fzf')

	-- rose-pine theme
	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function() require("rose-pine").setup()
			vim.cmd('colorscheme rose-pine')
		end
	})

    -- Trouble
    use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
    -- lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    -- Auto-completion
    use { -- Autocompletion
        'hrsh7th/nvim-cmp',
        requires = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
    }

    -- comment
    use ('numToStr/Comment.nvim')
    -- Pretty fold
    use('anuvyklack/pretty-fold.nvim')
    -- treesitter
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    -- cache navigator
	use('ThePrimeagen/harpoon')
    -- undotree
    use('mbbill/undotree')
    -- git wrapper
    use('tpope/vim-fugitive')
    -- zen-mode
    use("folke/zen-mode.nvim")
    -- git signs
    use ('lewis6991/gitsigns.nvim')
    -- Chad tree
    use('ms-jpq/chadtree')
    -- Tagbar
    use('preservim/tagbar')
    -- indent blankline
    use('lukas-reineke/indent-blankline.nvim')


end)
