local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>sh', builtin.search_history, {})
vim.keymap.set('n', '<leader>re', builtin.resume, {})
vim.keymap.set('n', '<leader>pk', builtin.pickers, {})


require('telescope').setup {
  defaults = {
    -- ...
  },
  pickers = {
    -- ...
  },
  extensions = {
    -- ...
  }
}
