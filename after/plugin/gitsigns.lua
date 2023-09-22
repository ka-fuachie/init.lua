require("gitsigns").setup{
  signs = {
    add = { text = '+' },
    change = { text = '~' },
    delete = { text = '_' },
    topdelete = { text = '‾' },
    changedelete = { text = '~' },
  },
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    vim.keymap.set('n', '<leader>tb', gs.toggle_current_line_blame, { buffer = bufnr })
    vim.keymap.set('n', '<leader>th', gs.preview_hunk, { buffer = bufnr })
  end
}
