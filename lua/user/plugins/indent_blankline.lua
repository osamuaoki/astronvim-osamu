vim.opt.termguicolors = true
-- show indent with background color only for copy-and-paste
vim.cmd [[highlight IndentBlanklineIndent1 guibg=#201010 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guibg=#204010 gui=nocombine]]
M =  {
  char = "",
  context_char = "",
  char_highlight_list = {
    "IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
  },
  space_char_highlight_list = {
    "IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
  },
  show_trailing_blankline_indent = false,
  use_treesitter = true,
  show_current_context = true,
}

return M
