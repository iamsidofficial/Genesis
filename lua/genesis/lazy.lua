-- bootstrap lazy.nvim

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

require("lazy").setup({


	-- themes 
	{
		"rebelot/kanagawa.nvim",

	},
	-- file tree
	
	{
		'nvim-tree/nvim-tree.lua',
		 keys = {
		      { "<leader>pv", "<cmd>NvimTreeToggle<cr>", desc = "NeoTree" },
		    },
		dependencies = {
			"nvim-tree/nvim-web-devicons", 
		},

	},

	-- terminal padding fix

	{
		"typicode/bg.nvim",
		lazy = false,
	},

	-- toggle term

	{
	  -- amongst your other plugins
	  {'akinsho/toggleterm.nvim', version = "*", config = true}
	  -- or
	  -- {'akinsho/toggleterm.nvim', version = "*", opts = {--[[ things you want to change go here]]}}
	},


	{
		"folke/trouble.nvim",
		
		dependencies = {
			"nvim-tree/nvim-web-devicons", 
		},

		config = function()
			--...
		end,
	},

	-- status bar
	
	{
		'nvim-lualine/lualine.nvim',
		
		dependencies = { 
			
			"nvim-tree/nvim-web-devicons", 
			opt = true,

		},

	},

	-- fuzzy finder

	{
    	'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                              , branch = '0.1.1',
		lazy = false;
		dependencies = {
			'nvim-lua/plenary.nvim' 
		},
	},
			
	{
		"nvim-treesitter/nvim-treesitter", 
		build = ":TSUpdate",
		lazy = false,
	},
})
