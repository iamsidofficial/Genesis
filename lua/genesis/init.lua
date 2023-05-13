require("genesis.opts")
require("genesis.lazy")
require("genesis.remap")
require("genesis.treesitter")
require("telescope")
require('kanagawa').setup()
require("nvim-tree").setup()
require('lualine').setup ()
-- set colorscheme
vim.cmd([[colorscheme kanagawa]])

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

