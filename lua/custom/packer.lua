vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- fuzzy searching
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- rose-pine theme
	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			require("rose-pine").setup()
			vim.cmd('colorscheme rose-pine')
		end
	})

	-- treesitter
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    -- cache navigator
	use('ThePrimeagen/harpoon')
    -- undotree
    use('mbbill/undotree')
    -- undotree
    use('tpope/vim-fugitive')

end)
