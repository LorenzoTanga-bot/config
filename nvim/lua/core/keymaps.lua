-- Lazy
vim.keymap.set('n', '<F2>', '<Cmd>Lazy<CR>')

--Nvim Tree
vim.keymap.set('n', '<c-f>', ':NvimTreeToggle<CR>')

--TagBar
vim.keymap.set('n', '<F8>', '<Cmd>TagbarToggle<CR>')

--Tab
vim.keymap.set('n', '<c-Left>', '<Cmd>tabprevious<CR>') 
vim.keymap.set('n', '<c-Right>', '<Cmd>tabnext<CR>')
vim.keymap.set('n', '<leader>tn', '<Cmd>tabnew<CR>')
vim.keymap.set('n', '<leader>tc', '<Cmd>tabclose<CR>')

--windows splits
vim.keymap.set('n', '<leader>wz', '<Cmd>tabclose<CR>')
vim.keymap.set('n', '<leader>wu', '<Cmd>tabclose<CR>')
vim.keymap.set('n', '<leader>we', '<Cmd>tabclose<CR>')

--GitFlog
vim.keymap.set('n', '<leader>gg', '<Cmd>Flog<CR>')
vim.keymap.set('n', '<leader>gv', '<Cmd>Flogsplit<CR>')

--lsp
vim.keymap.set("n", "<leader>gd", "<cmd>Lspsaga goto_definition<CR>")
