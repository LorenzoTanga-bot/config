vim.g.loaded_netrv = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
    },
    filters = {
      dotfiles = false,
    },
})


