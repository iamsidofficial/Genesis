
-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

-- toggle term
vim.keymap.set("n", "<leader>t", vim.cmd.ToggleTerm)
vim.keymap.set("t", "<leader>t", vim.cmd.ToggleTerm)
