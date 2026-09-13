vim.pack.add {
  {
    src = 'https://github.com/chomosuke/typst-preview.nvim',
  },
}

require('typst-preview').setup {
  -- Setting this to 'auto' or 'always' enables dark mode inversion in the browser
  invert_colors = 'never',

  dependencies_bin = {
    ['tinymist'] = 'tinymist',
  },
}

-- Buffer-local keymaps scoped to Typst files
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'typst',
  desc = 'Typst preview keybindings',
  callback = function(event)
    vim.keymap.set('n', '<leader>tp', '<cmd>TypstPreviewToggle<cr>', { buffer = event.buf, desc = '[T]ypst [P]review Toggle' })
    vim.keymap.set('n', '<leader>ts', '<cmd>TypstPreviewSyncCursor<cr>', { buffer = event.buf, desc = '[T]ypst Preview [S]ync Cursor' })
  end,
})
