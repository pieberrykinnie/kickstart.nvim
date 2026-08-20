-- Global VimTeX settings for latexmk and SumatraPDF
vim.g.vimtex_compiler_method = 'latexmk'
vim.g.vimtex_view_general_viewer = 'SumatraPDF'
vim.g.vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'

-- Add the plugin via vim.pack
vim.pack.add {
  { src = 'https://github.com/lervag/vimtex' },
}
